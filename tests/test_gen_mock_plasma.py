import sys
import tempfile
import unittest
from pathlib import Path

import h5py
import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "examples" / "fmm"))
import gen_mock_plasma


class PlasmaFixtureTests(unittest.TestCase):
    def test_generated_fixture_is_deterministic_and_valid(self):
        parameters = gen_mock_plasma.SimulationParameters(
            grid_size=16,
            particle_count=32,
            steps=5,
            seed=7,
        )
        first = gen_mock_plasma.simulate(parameters)
        second = gen_mock_plasma.simulate(parameters)

        self.assertEqual(first.keys(), second.keys())
        for name in first:
            np.testing.assert_array_equal(first[name], second[name])

        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "fixture.h5"
            gen_mock_plasma._write_fixture(path, parameters, first)
            gen_mock_plasma.validate_hdf5(path)

    def test_invalid_parameters_are_rejected(self):
        with self.assertRaisesRegex(ValueError, "time step"):
            gen_mock_plasma.SimulationParameters(dt=0.0).validate()
        with self.assertRaisesRegex(ValueError, "noise amplitude"):
            gen_mock_plasma.SimulationParameters(noise_amp=1.0).validate()

    def test_validator_rejects_missing_schema(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "invalid.h5"
            with h5py.File(path, "w"):
                pass

            with self.assertRaisesRegex(ValueError, "missing required paths"):
                gen_mock_plasma.validate_hdf5(path)

    def test_checked_in_fixture_is_valid(self):
        gen_mock_plasma.validate_hdf5(gen_mock_plasma.DEFAULT_OUTPUT)


if __name__ == "__main__":
    unittest.main()
