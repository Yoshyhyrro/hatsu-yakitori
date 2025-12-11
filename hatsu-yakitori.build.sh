#!/bin/sh

set -e
PATH='/usr/bin':$PATH
export CHICKEN_CC='x86_64-linux-gnu-gcc'
export CHICKEN_CXX='x86_64-linux-gnu-g++'
export CHICKEN_CSC='/usr/bin/csc'
export CHICKEN_CSI='/usr/bin/csi'
cd '/mnt/c/Users/tyuuw/hatsu-yakitori'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/kak_decomposition.so' '/mnt/c/Users/tyuuw/hatsu-yakitori/kak_decomposition.import.scm' : 'core/kak_decomposition.scm' '/mnt/c/Users/tyuuw/hatsu-yakitori/hatsu-yakitori.egg'    : '/usr/bin/csc' -host -D compiling-extension -J -s -regenerate-import-libraries -setup-mode -I /mnt/c/Users/tyuuw/hatsu-yakitori -C -I/mnt/c/Users/tyuuw/hatsu-yakitori '-O3' '-d1' 'core/kak_decomposition.scm'  -o '/mnt/c/Users/tyuuw/hatsu-yakitori/kak_decomposition.so'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/kak_decomposition.static.o' '/mnt/c/Users/tyuuw/hatsu-yakitori/kak_decomposition.link' : 'core/kak_decomposition.scm' '/mnt/c/Users/tyuuw/hatsu-yakitori/hatsu-yakitori.egg'   : '/usr/bin/csc' -regenerate-import-libraries -M -setup-mode -static -I /mnt/c/Users/tyuuw/hatsu-yakitori -emit-link-file '/mnt/c/Users/tyuuw/hatsu-yakitori/kak_decomposition.link' -host -D compiling-extension -c -unit kak_decomposition -D compiling-static-extension -C -I/mnt/c/Users/tyuuw/hatsu-yakitori '-O3' '-d1' 'core/kak_decomposition.scm' -o '/mnt/c/Users/tyuuw/hatsu-yakitori/kak_decomposition.static.o'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/kak_decomposition.import.so' : 'kak_decomposition.import.scm' : '/usr/bin/csc' -setup-mode -s -host -I /mnt/c/Users/tyuuw/hatsu-yakitori -C -I/mnt/c/Users/tyuuw/hatsu-yakitori '-O3' '-d1' 'kak_decomposition.import.scm' -o '/mnt/c/Users/tyuuw/hatsu-yakitori/kak_decomposition.import.so'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/boids.so' '/mnt/c/Users/tyuuw/hatsu-yakitori/boids.import.scm' : 'modules/boids/boids_main.scm' '/mnt/c/Users/tyuuw/hatsu-yakitori/hatsu-yakitori.egg'    : '/usr/bin/csc' -host -D compiling-extension -J -s -regenerate-import-libraries -setup-mode -I /mnt/c/Users/tyuuw/hatsu-yakitori -C -I/mnt/c/Users/tyuuw/hatsu-yakitori '-O2' '-d1' 'modules/boids/boids_main.scm'  -o '/mnt/c/Users/tyuuw/hatsu-yakitori/boids.so'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/boids.static.o' '/mnt/c/Users/tyuuw/hatsu-yakitori/boids.link' : 'modules/boids/boids_main.scm' '/mnt/c/Users/tyuuw/hatsu-yakitori/hatsu-yakitori.egg'   : '/usr/bin/csc' -regenerate-import-libraries -M -setup-mode -static -I /mnt/c/Users/tyuuw/hatsu-yakitori -emit-link-file '/mnt/c/Users/tyuuw/hatsu-yakitori/boids.link' -host -D compiling-extension -c -unit boids -D compiling-static-extension -C -I/mnt/c/Users/tyuuw/hatsu-yakitori '-O2' '-d1' 'modules/boids/boids_main.scm' -o '/mnt/c/Users/tyuuw/hatsu-yakitori/boids.static.o'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/boids.import.so' : 'boids.import.scm' : '/usr/bin/csc' -setup-mode -s -host -I /mnt/c/Users/tyuuw/hatsu-yakitori -C -I/mnt/c/Users/tyuuw/hatsu-yakitori '-O2' '-d0' 'boids.import.scm' -o '/mnt/c/Users/tyuuw/hatsu-yakitori/boids.import.so'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/fmm.so' '/mnt/c/Users/tyuuw/hatsu-yakitori/fmm.import.scm' : 'modules/fmm/fmm_on_goppa_grid.scm' '/mnt/c/Users/tyuuw/hatsu-yakitori/hatsu-yakitori.egg'    : '/usr/bin/csc' -host -D compiling-extension -J -s -regenerate-import-libraries -setup-mode -I /mnt/c/Users/tyuuw/hatsu-yakitori -C -I/mnt/c/Users/tyuuw/hatsu-yakitori '-O2' '-d1' 'modules/fmm/fmm_on_goppa_grid.scm'  -o '/mnt/c/Users/tyuuw/hatsu-yakitori/fmm.so'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/fmm.static.o' '/mnt/c/Users/tyuuw/hatsu-yakitori/fmm.link' : 'modules/fmm/fmm_on_goppa_grid.scm' '/mnt/c/Users/tyuuw/hatsu-yakitori/hatsu-yakitori.egg'   : '/usr/bin/csc' -regenerate-import-libraries -M -setup-mode -static -I /mnt/c/Users/tyuuw/hatsu-yakitori -emit-link-file '/mnt/c/Users/tyuuw/hatsu-yakitori/fmm.link' -host -D compiling-extension -c -unit fmm -D compiling-static-extension -C -I/mnt/c/Users/tyuuw/hatsu-yakitori '-O2' '-d1' 'modules/fmm/fmm_on_goppa_grid.scm' -o '/mnt/c/Users/tyuuw/hatsu-yakitori/fmm.static.o'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/fmm.import.so' : 'fmm.import.scm' : '/usr/bin/csc' -setup-mode -s -host -I /mnt/c/Users/tyuuw/hatsu-yakitori -C -I/mnt/c/Users/tyuuw/hatsu-yakitori '-O2' '-d0' 'fmm.import.scm' -o '/mnt/c/Users/tyuuw/hatsu-yakitori/fmm.import.so'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/sssp.so' '/mnt/c/Users/tyuuw/hatsu-yakitori/sssp.import.scm' : 'modules/sssp/sssp_main.scm' '/mnt/c/Users/tyuuw/hatsu-yakitori/hatsu-yakitori.egg'    : '/usr/bin/csc' -host -D compiling-extension -J -s -regenerate-import-libraries -setup-mode -I /mnt/c/Users/tyuuw/hatsu-yakitori -C -I/mnt/c/Users/tyuuw/hatsu-yakitori '-O2' '-d1' 'modules/sssp/sssp_main.scm'  -o '/mnt/c/Users/tyuuw/hatsu-yakitori/sssp.so'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/sssp.static.o' '/mnt/c/Users/tyuuw/hatsu-yakitori/sssp.link' : 'modules/sssp/sssp_main.scm' '/mnt/c/Users/tyuuw/hatsu-yakitori/hatsu-yakitori.egg'   : '/usr/bin/csc' -regenerate-import-libraries -M -setup-mode -static -I /mnt/c/Users/tyuuw/hatsu-yakitori -emit-link-file '/mnt/c/Users/tyuuw/hatsu-yakitori/sssp.link' -host -D compiling-extension -c -unit sssp -D compiling-static-extension -C -I/mnt/c/Users/tyuuw/hatsu-yakitori '-O2' '-d1' 'modules/sssp/sssp_main.scm' -o '/mnt/c/Users/tyuuw/hatsu-yakitori/sssp.static.o'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/sssp.import.so' : 'sssp.import.scm' : '/usr/bin/csc' -setup-mode -s -host -I /mnt/c/Users/tyuuw/hatsu-yakitori -C -I/mnt/c/Users/tyuuw/hatsu-yakitori '-O2' '-d0' 'sssp.import.scm' -o '/mnt/c/Users/tyuuw/hatsu-yakitori/sssp.import.so'
