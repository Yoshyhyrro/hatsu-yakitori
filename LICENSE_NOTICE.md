# License Migration Notice

**hatsu-yakitori** is transitioning from **BSD 3-Clause** to **Mozilla Public License 2.0 (MPL 2.0)** starting with the v0.5.0 release.

## Timeline

| Version Range | License | Effective Date | Status |
| :--- | :--- | :--- | :--- |
| `<= v0.4.x` | BSD 3-Clause | Current | Active |
| `>= v0.5.0` | **MPL 2.0** | Planned | Upcoming |

This document explains the rationale, key differences, and how the migration affects users and contributors.

---

## Why MPL 2.0?

### Project Evolution

The original BSD 3-Clause license was appropriate for a research prototype. As **hatsu-yakitori** matures:

1. **Formal verification footprint grows** → Lean 4 proofs (`dist-proof/lean4/`) need clear copyleft scope
2. **Flang integration planned** → Compiler toolchain work benefits from MPL 2.0's patent clarity
3. **Algebraic-physics hybridity** → Cross-disciplinary contributors need explicit module-level licensing flexibility
4. **Proof-of-concept → Production** → Stronger community code governance desired

### What Changed

- **Copyleft scope**: BSD had no copyleft. MPL 2.0 is **file-scoped copyleft** — changes to covered files must share improvements, but dependents can use unchanged modules under their own license.
- **Patent grants**: MPL 2.0 includes explicit patent grants from contributors.
- **Compatibility**: MPL 2.0 is compatible with Apache 2.0 and permissive licenses in larger works.

---

## License Comparison

### Permissiveness & Copyleft

| Aspect | BSD 3-Clause | MPL 2.0 |
| :--- | :--- | :--- |
| **Copyleft strength** | None (fully permissive) | File-scoped (weak) |
| **Modified files must be shared?** | No | Yes, under MPL 2.0 |
| **Can incorporate unchanged code?** | Yes, any license | Yes, any license |
| **Proprietary derivative?** | Allowed | Allowed (if modules unchanged) |
| **Patent protection** | Implicit | Explicit grant + express termination |

### Key Obligations

| Obligation | BSD 3-Clause | MPL 2.0 |
| :--- | :--- | :--- |
| **Preserve copyright notice** | ✓ | ✓ |
| **Preserve license text** | ✓ | ✓ |
| **Disclose source** | ✗ | Only modified files |
| **Share improvements** | ✗ | Only modified files |
| **Provide license copy** | ✓ | ✓ |
| **State changes** | ✓ (encouraged) | ✓ (required) |

### Practical Impact for Different Users

#### **Downstream Library / Application Developers**

**Before (BSD 3-Clause):**
```
✓ Use hatsu-yakitori unmodified → Any license
✓ Modify hatsu-yakitori → Any license (proprietary, GPL, Apache, etc.)
✓ Redistribute modified hatsu-yakitori → Include BSD notice
```

**After (MPL 2.0):**
```
✓ Use hatsu-yakitori unmodified → Any license
✗ Modify hatsu-yakitori files → Share modifications under MPL 2.0
✓ Use unchanged modules → Any license (wrap in new module if needed)
→ Practical: wrap `golay_frontier.scm` in your own `my-frontier.scm` under Apache/GPL/proprietary
```

#### **Formal Verification / Lean Contributors**

**Before:** Lean proofs could live anywhere.

**After:** Lean proofs in `dist-proof/lean4/HatsuYakitori/` are **MPL 2.0**. If you prove theorems about FMM or quiver structures and contribute them back, they must be MPL 2.0. This ensures:
- Proof improvements flow back to the project
- No fragmentation of verification artifacts
- Clear chain of custody for formal-methods work

#### **CI/Build System Integrators**

Unchanged. GitHub Actions workflows, Shake build configs, and HDF5 scripts can stay as-is (or adopt MPL 2.0 for clarity).

---

## Migration Roadmap: v0.4.x → v0.5.0+

### Phase 1: Announce (Now)

- [ ] Post LICENSE_NOTICE.md to repository
- [ ] Update README.md with migration callout
- [ ] Tag last BSD release (e.g., `v0.4.9`)

### Phase 2: Prepare (Before v0.5.0-rc)

- [ ] Replace `LICENSE` file with MPL 2.0 text
- [ ] Add SPDX headers to all source files:
  ```scheme
  ;; SPDX-License-Identifier: MPL-2.0
  ;; Copyright (c) 2025, Yoshihiro Hasegawa
  ```
- [ ] Update CI badge (if any) to reflect MPL 2.0
- [ ] Add `COPYING` symlink for GNU convention: `COPYING → LICENSE`

### Phase 3: Release (v0.5.0)

- [ ] Merge MPL 2.0 LICENSE
- [ ] Tag `v0.5.0`
- [ ] Update GitHub release notes with migration summary

### Phase 4: Legacy Support (v0.4.x maintenance, if needed)

- [ ] Backport critical security/correctness fixes to `v0.4.x` branch
- [ ] Clearly label: "v0.4.x: BSD 3-Clause, no longer updated"

---

## For Contributors

### Adding New Code (v0.5.0+)

When you contribute code to hatsu-yakitori v0.5.0+:

1. **Header**: Add SPDX identifier (see Phase 2 above)
2. **Modified existing files**: Automatically falls under MPL 2.0
3. **New modules**: Choose MPL 2.0 (standard) or a compatible license (with maintainer approval)

### Contributing to Lean Proofs

Formal verification contributions to `dist-proof/lean4/HatsuYakitori/` must be:
- Submitted under MPL 2.0
- Reference the theorems/structures they augment (e.g., "Extends `HopfStructure.lean`")
- Include proof sketch in PR description

---

## FAQ

### Q: Can I still use v0.4.x under BSD 3-Clause?

**A:** Yes. All v0.4.x releases remain under BSD 3-Clause in perpetuity. You can:
- Use v0.4.9 unchanged in proprietary projects
- Fork v0.4.x and maintain your own BSD branch
- Mix v0.4.x (BSD) code with v0.5.0+ (MPL 2.0) in a larger work (aggregate license)

### Q: Does MPL 2.0 mean I have to open-source my whole application?

**A:** No. MPL 2.0 is **file-scoped copyleft**, not network copyleft (like AGPL). You only need to share modifications to hatsu-yakitori files themselves. Your application logic stays proprietary.

**Example:**
```
My proprietary app
├── [proprietary] main.scm
├── [MPL 2.0] golay_frontier.scm (from hatsu-yakitori, modified)
├── [proprietary] my_wrapper.scm (calls golay_frontier unchanged)
└── [proprietary] other_stuff.scm

→ Share: golay_frontier.scm + changes
→ Keep private: main.scm, my_wrapper.scm, other_stuff.scm
```

### Q: What about the Flang / Fortran integration?

**A:** MPL 2.0 was chosen partly because:
- Fortran/Flang toolchain work often lives in GPL or LLVM-style projects
- MPL 2.0's explicit patent clause is valuable in compiler contexts
- Flang-specific modules can remain MPL 2.0 or adopt a compatible dual-license (e.g., MPL 2.0 + Apache 2.0)

Initial Flang support (planned for v0.5.x) will be:
```
src/flang/
├── fmm_fortran_binding.f90  → MPL 2.0
├── cartan_glue.scm          → MPL 2.0
└── BUILD.md                 → MPL 2.0 + notes
```

### Q: Can I use this in academic / research work?

**A:** Absolutely. Both BSD 3-Clause and MPL 2.0 permit academic use:

- **Cite** the project in your paper
- **Acknowledge** the license in your derivative work
- **Share modifications** if you publish a competing implementation (MPL 2.0 only)

### Q: What if v0.5.0 has a security vulnerability?

**A:** Vulnerability fixes are released under the license active at the time:
- **v0.4.x hotfix** → BSD 3-Clause (if backported)
- **v0.5.0+ hotfix** → MPL 2.0

---

## Compatibility Matrix

When combining hatsu-yakitori with other projects:

| Scenario | BSD 3-Clause (v0.4.x) | MPL 2.0 (v0.5.0+) | Recommendation |
| :--- | :--- | :--- | :--- |
| Use in Apache 2.0 project | ✓ Compatible | ✓ Compatible | Either version fine |
| Use in GPL project | ✓ Compatible | ⚠️ File-level restriction | Pin v0.4.x or dual-license module |
| Use in proprietary app | ✓ OK, no sharing required | ✓ OK, share modifications only | MPL 2.0 is fine; see FAQ |
| Modify & redistribute | ✓ No obligation | ✓ Share source; include license | v0.5.0+ requires source sharing |
| Use in AGPL project | ✓ Compatible | ✓ Compatible | Either version fine |

**Read more:** [MPL 2.0 compatibility guide](https://www.mozilla.org/en-US/MPL/2.0/FAQ/)

---

## Questions?

- **License text**: See [`LICENSE`](LICENSE) (MPL 2.0, effective v0.5.0+) or [Mozilla's official FAQ](https://www.mozilla.org/en-US/MPL/2.0/FAQ/)
- **Contributing**: See [CONTRIBUTING.md](CONTRIBUTING.md) (if available)
- **Issues/Discussion**: Open a GitHub issue labeled `license-migration` or `[mpls2]`

---

## Acknowledgments

This migration maintains the original intent of **hatsu-yakitori**: enabling collaborative algebraic and numerical research while respecting contributors' rights and ensuring formal-verification work remains accessible to the community.

The choice of MPL 2.0 reflects:
- **Community transparency** (file-scoped copyleft encourages sharing improvements)
- **Research sustainability** (explicit patent grants protect all contributors)
- **Flang/compiler compatibility** (proven in LLVM and other toolchain projects)

**Last Updated:** May 2026  
**Migrating Maintainer:** Yoshihiro Hasegawa
