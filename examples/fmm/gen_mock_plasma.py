#!/usr/bin/env python3
"""Generate a deterministic 1D electrostatic plasma HDF5 fixture.

This small particle-in-cell model is intended for reproducible examples and
CI fixtures; it is not a production plasma simulation code.
"""

from __future__ import annotations

import argparse
import math
import os
import tempfile
from dataclasses import dataclass
from pathlib import Path

import h5py
import numpy as np


DEFAULT_OUTPUT = Path(__file__).with_name("plasma_landau_mock.h5")
BOX_LENGTH = 2.0 * math.pi
WAVE_NUMBER = 1.0


@dataclass(frozen=True)
class SimulationParameters:
    grid_size: int = 64
    particle_count: int = 256
    steps: int = 32
    dt: float = 0.1
    noise_amp: float = 0.003
    thermal_velocity: float = 1.0
    seed: int = 42

    def validate(self) -> None:
        if self.grid_size < 2:
            raise ValueError("grid size must be at least 2")
        if self.particle_count < 1:
            raise ValueError("particle count must be positive")
        if self.steps < 1:
            raise ValueError("step count must be positive")
        if self.seed < 0:
            raise ValueError("seed must be non-negative")
        if not math.isfinite(self.dt) or self.dt <= 0.0:
            raise ValueError("time step must be finite and positive")
        if not math.isfinite(self.noise_amp) or not 0.0 <= self.noise_amp < 1.0:
            raise ValueError("noise amplitude must be finite and in [0, 1)")
        if not math.isfinite(self.thermal_velocity) or self.thermal_velocity < 0.0:
            raise ValueError("thermal velocity must be finite and non-negative")


def _deposit_electron_density(
    positions: np.ndarray,
    charges: np.ndarray,
    cell_centers: np.ndarray,
    cell_width: float,
    box_length: float,
) -> np.ndarray:
    """Deposit electron charge with periodic cloud-in-cell weighting."""
    scaled = np.mod(positions / cell_width - 0.5, len(cell_centers))
    left = np.floor(scaled).astype(np.intp)
    fraction = scaled - left
    right = (left + 1) % len(cell_centers)

    density = np.ones(len(cell_centers), dtype=np.float64)
    macro_charge = charges * (box_length / len(charges))
    np.add.at(density, left, macro_charge * (1.0 - fraction) / cell_width)
    np.add.at(density, right, macro_charge * fraction / cell_width)
    return density


def _electric_field(
    positions: np.ndarray,
    charges: np.ndarray,
    cell_centers: np.ndarray,
    cell_width: float,
    box_length: float,
) -> np.ndarray:
    """Solve the periodic 1D Poisson equation using a spectral derivative."""
    charge_density = _deposit_electron_density(
        positions, charges, cell_centers, cell_width, box_length
    )
    wave_numbers = 2.0 * math.pi * np.fft.fftfreq(len(cell_centers), d=cell_width)
    density_modes = np.fft.fft(charge_density)
    field_modes = np.zeros_like(density_modes)
    nonzero_modes = wave_numbers != 0.0
    field_modes[nonzero_modes] = density_modes[nonzero_modes] / (
        1j * wave_numbers[nonzero_modes]
    )
    return np.fft.ifft(field_modes).real


def _interpolate_periodic(
    values: np.ndarray,
    positions: np.ndarray,
    cell_width: float,
) -> np.ndarray:
    scaled = np.mod(positions / cell_width - 0.5, len(values))
    left = np.floor(scaled).astype(np.intp)
    fraction = scaled - left
    right = (left + 1) % len(values)
    return values[left] * (1.0 - fraction) + values[right] * fraction


def simulate(parameters: SimulationParameters) -> dict[str, np.ndarray]:
    parameters.validate()
    rng = np.random.default_rng(parameters.seed)
    cell_width = BOX_LENGTH / parameters.grid_size
    cell_centers = (np.arange(parameters.grid_size) + 0.5) * cell_width

    # Inverse-CDF perturbation of a uniform quiet start gives n(x) ~= 1 + A cos(kx).
    uniform_positions = (
        np.arange(parameters.particle_count) + rng.random(parameters.particle_count)
    ) * (BOX_LENGTH / parameters.particle_count)
    positions = np.mod(
        uniform_positions
        - (parameters.noise_amp / WAVE_NUMBER)
        * np.sin(WAVE_NUMBER * uniform_positions),
        BOX_LENGTH,
    )
    charges = -np.ones(parameters.particle_count, dtype=np.float64)
    velocities = rng.normal(
        loc=0.0, scale=parameters.thermal_velocity, size=parameters.particle_count
    )

    times = np.arange(parameters.steps, dtype=np.float64) * parameters.dt
    electric_field = np.empty(parameters.steps, dtype=np.float64)
    position_history = np.empty(
        (parameters.steps, parameters.particle_count), dtype=np.float64
    )
    velocity_history = np.empty_like(position_history)

    for step in range(parameters.steps):
        field = _electric_field(
            positions, charges, cell_centers, cell_width, BOX_LENGTH
        )
        position_history[step] = positions
        velocity_history[step] = velocities
        electric_field[step] = 2.0 * np.mean(
            field * np.sin(WAVE_NUMBER * cell_centers)
        )

        if step + 1 == parameters.steps:
            continue

        acceleration = charges * _interpolate_periodic(field, positions, cell_width)
        next_positions = np.mod(
            positions
            + velocities * parameters.dt
            + 0.5 * acceleration * parameters.dt**2,
            BOX_LENGTH,
        )
        next_field = _electric_field(
            next_positions, charges, cell_centers, cell_width, BOX_LENGTH
        )
        next_acceleration = charges * _interpolate_periodic(
            next_field, next_positions, cell_width
        )
        velocities += 0.5 * (acceleration + next_acceleration) * parameters.dt
        positions = next_positions

    return {
        "cell_centers": cell_centers,
        "particle_cell_index": np.floor(
            position_history[0] / cell_width
        ).astype(np.int32),
        "charge": charges,
        "position_x": position_history[0].copy(),
        "velocity_x": velocity_history[0].copy(),
        "time": times,
        "E_field": electric_field,
        "trajectory_position_x": position_history,
        "trajectory_velocity_x": velocity_history,
    }


def validate_hdf5(filepath: Path) -> None:
    """Validate the HDF5 layout and numerical invariants used by this fixture."""
    try:
        h5_file = h5py.File(filepath, "r")
    except OSError as exc:
        raise ValueError(f"cannot open HDF5 file '{filepath}': {exc}") from exc

    with h5_file:
        required_paths = (
            "goppa_grid/cell_centers",
            "goppa_grid/particle_cell_index",
            "initial_conditions/charge",
            "initial_conditions/position_x",
            "initial_conditions/velocity_x",
            "metadata",
            "timeseries/E_field",
            "timeseries/time",
            "trajectories/position_x",
            "trajectories/velocity_x",
        )
        missing = [name for name in required_paths if name not in h5_file]
        if missing:
            raise ValueError(f"HDF5 file is missing required paths: {', '.join(missing)}")

        metadata = h5_file["metadata"].attrs
        required_attributes = (
            "box_length",
            "dt",
            "k_wave",
            "n_grid",
            "n_particles",
            "noise_amp",
            "thermal_vel",
        )
        missing_attributes = [name for name in required_attributes if name not in metadata]
        if missing_attributes:
            raise ValueError(
                "HDF5 metadata is missing required attributes: "
                + ", ".join(missing_attributes)
            )

        n_grid = int(metadata["n_grid"])
        n_particles = int(metadata["n_particles"])
        box_length = float(metadata["box_length"])
        dt = float(metadata["dt"])
        if n_grid < 2 or n_particles < 1 or not math.isfinite(box_length) or box_length <= 0:
            raise ValueError("HDF5 metadata contains invalid grid or box dimensions")
        if not math.isfinite(dt) or dt <= 0.0:
            raise ValueError("HDF5 metadata contains an invalid time step")

        centers = h5_file["goppa_grid/cell_centers"][...]
        cell_indices = h5_file["goppa_grid/particle_cell_index"][...]
        charges = h5_file["initial_conditions/charge"][...]
        initial_positions = h5_file["initial_conditions/position_x"][...]
        initial_velocities = h5_file["initial_conditions/velocity_x"][...]
        times = h5_file["timeseries/time"][...]
        field = h5_file["timeseries/E_field"][...]
        trajectory_positions = h5_file["trajectories/position_x"][...]
        trajectory_velocities = h5_file["trajectories/velocity_x"][...]

        if centers.shape != (n_grid,):
            raise ValueError(f"cell_centers must have shape ({n_grid},)")
        if cell_indices.shape != (n_particles,):
            raise ValueError(f"particle_cell_index must have shape ({n_particles},)")
        for name, dataset in (
            ("charge", charges),
            ("position_x", initial_positions),
            ("velocity_x", initial_velocities),
        ):
            if dataset.shape != (n_particles,):
                raise ValueError(f"initial_conditions/{name} must have shape ({n_particles},)")
        if times.ndim != 1 or times.size == 0 or field.shape != times.shape:
            raise ValueError("timeseries/time and timeseries/E_field must be non-empty 1D arrays")
        expected_trajectory_shape = (times.size, n_particles)
        if trajectory_positions.shape != expected_trajectory_shape:
            raise ValueError(
                f"trajectories/position_x must have shape {expected_trajectory_shape}"
            )
        if trajectory_velocities.shape != expected_trajectory_shape:
            raise ValueError(
                f"trajectories/velocity_x must have shape {expected_trajectory_shape}"
            )

        numeric_datasets = (
            centers,
            charges,
            initial_positions,
            initial_velocities,
            times,
            field,
            trajectory_positions,
            trajectory_velocities,
        )
        if any(not np.isfinite(dataset).all() for dataset in numeric_datasets):
            raise ValueError("HDF5 datasets must contain only finite values")

        cell_width = box_length / n_grid
        expected_centers = (np.arange(n_grid) + 0.5) * cell_width
        if not np.allclose(centers, expected_centers, rtol=0.0, atol=1e-12):
            raise ValueError("goppa_grid/cell_centers do not match the periodic grid")
        if np.any(cell_indices < 0) or np.any(cell_indices >= n_grid):
            raise ValueError("goppa_grid/particle_cell_index contains an out-of-range index")
        if np.any(initial_positions < 0.0) or np.any(initial_positions >= box_length):
            raise ValueError("initial particle positions must be inside the periodic box")
        if np.any(trajectory_positions < 0.0) or np.any(trajectory_positions >= box_length):
            raise ValueError("trajectory positions must be inside the periodic box")
        expected_times = np.arange(times.size, dtype=np.float64) * dt
        if not np.allclose(times, expected_times, rtol=0.0, atol=1e-12):
            raise ValueError("timeseries/time must start at zero and use the metadata time step")
        if not np.array_equal(initial_positions, trajectory_positions[0]):
            raise ValueError("initial positions must match the first trajectory frame")
        if not np.array_equal(initial_velocities, trajectory_velocities[0]):
            raise ValueError("initial velocities must match the first trajectory frame")
        if not np.array_equal(
            cell_indices,
            np.floor(initial_positions / cell_width).astype(np.int32),
        ):
            raise ValueError("particle_cell_index does not match the initial positions")


def _write_fixture(
    output: Path, parameters: SimulationParameters, data: dict[str, np.ndarray]
) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    temporary_path: Path | None = None
    try:
        with tempfile.NamedTemporaryFile(
            prefix=f".{output.name}.",
            suffix=".tmp",
            dir=output.parent,
            delete=False,
        ) as temporary_file:
            temporary_path = Path(temporary_file.name)

        with h5py.File(temporary_path, "w") as h5_file:
            grid = h5_file.create_group("goppa_grid")
            grid.create_dataset("cell_centers", data=data["cell_centers"])
            grid.create_dataset("particle_cell_index", data=data["particle_cell_index"])
            grid.attrs["cell_width"] = BOX_LENGTH / parameters.grid_size
            grid.attrs["n_cells"] = parameters.grid_size

            initial = h5_file.create_group("initial_conditions")
            initial.create_dataset("charge", data=data["charge"])
            initial.create_dataset("position_x", data=data["position_x"])
            initial.create_dataset("velocity_x", data=data["velocity_x"])

            metadata = h5_file.create_group("metadata")
            metadata.attrs["box_length"] = BOX_LENGTH
            metadata.attrs["description"] = "Mock plasma: 1D electrostatic Landau damping"
            metadata.attrs["dt"] = parameters.dt
            metadata.attrs["generator"] = "gen_mock_plasma.py (hatsu-yakitori)"
            metadata.attrs["k_wave"] = WAVE_NUMBER
            metadata.attrs["n_grid"] = parameters.grid_size
            metadata.attrs["n_particles"] = parameters.particle_count
            metadata.attrs["noise_amp"] = parameters.noise_amp
            metadata.attrs["thermal_vel"] = parameters.thermal_velocity
            metadata.attrs["model"] = (
                "1D electrostatic particle-in-cell; periodic CIC and spectral Poisson"
            )
            metadata.attrs["seed"] = parameters.seed
            metadata.attrs["steps"] = parameters.steps

            timeseries = h5_file.create_group("timeseries")
            timeseries.create_dataset("E_field", data=data["E_field"], compression="gzip")
            timeseries.create_dataset("time", data=data["time"])

            trajectories = h5_file.create_group("trajectories")
            trajectories.create_dataset(
                "position_x",
                data=data["trajectory_position_x"],
                compression="gzip",
                compression_opts=4,
            )
            trajectories.create_dataset(
                "velocity_x",
                data=data["trajectory_velocity_x"],
                compression="gzip",
                compression_opts=4,
            )

        validate_hdf5(temporary_path)
        os.replace(temporary_path, output)
    finally:
        if temporary_path is not None and temporary_path.exists():
            temporary_path.unlink()


def _parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Generate or validate the deterministic FMM plasma HDF5 fixture."
    )
    parser.add_argument(
        "output",
        nargs="?",
        type=Path,
        default=DEFAULT_OUTPUT,
        help=f"output file (default: {DEFAULT_OUTPUT})",
    )
    parser.add_argument(
        "--validate",
        action="store_true",
        help="validate the existing output file without regenerating it",
    )
    parser.add_argument("--grid-size", type=int, default=64)
    parser.add_argument("--particles", type=int, default=256)
    parser.add_argument("--steps", type=int, default=32)
    parser.add_argument("--dt", type=float, default=0.1)
    parser.add_argument("--noise-amp", type=float, default=0.003)
    parser.add_argument("--thermal-vel", type=float, default=1.0)
    parser.add_argument("--seed", type=int, default=42)
    return parser.parse_args()


def main() -> int:
    args = _parse_args()
    if args.validate:
        try:
            validate_hdf5(args.output)
        except ValueError as exc:
            raise SystemExit(f"error: {exc}") from exc
        print(f"[SUCCESS] HDF5 fixture is valid: {args.output}")
        return 0

    parameters = SimulationParameters(
        grid_size=args.grid_size,
        particle_count=args.particles,
        steps=args.steps,
        dt=args.dt,
        noise_amp=args.noise_amp,
        thermal_velocity=args.thermal_vel,
        seed=args.seed,
    )
    try:
        parameters.validate()
    except ValueError as exc:
        raise SystemExit(f"error: {exc}") from exc

    try:
        data = simulate(parameters)
        _write_fixture(args.output, parameters, data)
    except (OSError, ValueError) as exc:
        raise SystemExit(f"error: {exc}") from exc

    print(f"[SUCCESS] Generated and validated HDF5 fixture: {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
