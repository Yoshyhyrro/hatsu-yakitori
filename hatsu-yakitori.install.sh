#!/bin/sh

set -e
cd '/mnt/c/Users/tyuuw/hatsu-yakitori'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/sssp.static.o' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/sssp.o'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/sssp.link' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/sssp.link'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11'
install -m 755 '/mnt/c/Users/tyuuw/hatsu-yakitori/sssp.so' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/sssp.so'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11'
install -m 755 '/mnt/c/Users/tyuuw/hatsu-yakitori/sssp.import.so' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/sssp.import.so'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/fmm.static.o' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/fmm.o'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/fmm.link' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/fmm.link'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11'
install -m 755 '/mnt/c/Users/tyuuw/hatsu-yakitori/fmm.so' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/fmm.so'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11'
install -m 755 '/mnt/c/Users/tyuuw/hatsu-yakitori/fmm.import.so' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/fmm.import.so'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/boids.static.o' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/boids.o'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/boids.link' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/boids.link'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11'
install -m 755 '/mnt/c/Users/tyuuw/hatsu-yakitori/boids.so' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/boids.so'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11'
install -m 755 '/mnt/c/Users/tyuuw/hatsu-yakitori/boids.import.so' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/boids.import.so'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/kak_decomposition.static.o' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/kak_decomposition.o'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/kak_decomposition.link' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/kak_decomposition.link'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11'
install -m 755 '/mnt/c/Users/tyuuw/hatsu-yakitori/kak_decomposition.so' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/kak_decomposition.so'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11'
install -m 755 '/mnt/c/Users/tyuuw/hatsu-yakitori/kak_decomposition.import.so' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/kak_decomposition.import.so'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11'
rm -f "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/hatsu-yakitori.egg-info'
cat >"${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/hatsu-yakitori.egg-info' <<ENDINFO
((installed-files
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/kak_decomposition.o"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/kak_decomposition.link"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/kak_decomposition.so"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/kak_decomposition.import.so"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/boids.o"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/boids.link"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/boids.so"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/boids.import.so"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/fmm.o"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/fmm.link"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/fmm.so"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/fmm.import.so"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/sssp.o"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/sssp.link"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/sssp.so"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-1ef5e/repo/lib/chicken/11/sssp.import.so")
 (version "0.0.1")
 (license "BSD-3-Clause")
 (author "Yoshihiro Hasegawa")
 (synopsis
   "KAK-inspired bounded-computation core (SSSP / FMM / particle math)")
 (category tools)
 (dependencies srfi-1 srfi-69)
 (test-dependencies test)
 (components
   (extension
     kak_decomposition
     (source "core/kak_decomposition.scm")
     (csc-options "-O3" "-d1"))
   (extension boids (source "modules/boids/boids_main.scm"))
   (extension fmm (source "modules/fmm/fmm_on_goppa_grid.scm"))
   (extension sssp (source "modules/sssp/sssp_main.scm"))))
ENDINFO
