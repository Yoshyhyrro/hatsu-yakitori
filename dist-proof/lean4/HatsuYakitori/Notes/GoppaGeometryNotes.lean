/-!
# GoppaGeometry Notes

This note explains the intended mathematics behind `HatsuYakitori.GoppaGeometry`.
The implementation file is kept discrete-first and `sorry`-free; deeper analytic
and combinatorial arguments are documented here until they are ready to be
formalized.

## 1. Unit-circle embedding
The grid is modeled as equally spaced points on the unit circle:

- For `n` points: $z_k = \exp(i \cdot 2\pi k/n)$ for $k = 0,\dots,n-1$.

This matches the Scheme code’s construction and is compatible with FFT-style
techniques.

## 2. Angular separation (deferred)
The statement `min_angular_separation` asserts a uniform lower bound on angular
spacing for distinct indices. In a purely discrete setting, this is a simple
fact about integers modulo `n`, but turning it into the exact inequality used
by `angularDistance` requires some bookkeeping (casts, absolute values, and
monotonicity of division).

For now it is axiomatized in `GoppaGeometry.lean`.

## 3. Witt design ↔ Goppa embedding (deferred)
The statement `goppa_octad_correspondence` is a long-term bridge between:
- the combinatorial Witt design (octads), and
- geometric configurations on the unit circle with a separation condition.

This is substantially nontrivial and depends on the precise embedding and the
chosen geometric predicate; it is also axiomatized for now.

## 4. Practical guidance for FMM formalization
For the FMM formalization, we primarily need:
- the grid as a `Vector ℂ n`,
- access to points by `Fin n` indices, and
- basic derived quantities (e.g. centers).

The analytic convergence/error theory should initially be developed as lemmas
about truncated series on well-separated configurations, and only later be
pulled into the main implementation file.
-/
