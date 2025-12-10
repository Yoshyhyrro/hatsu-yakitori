#!/bin/sh

set -e
PATH='/usr/bin':$PATH
export CHICKEN_CC='x86_64-linux-gnu-gcc'
export CHICKEN_CXX='x86_64-linux-gnu-g++'
export CHICKEN_CSC='/usr/bin/csc'
export CHICKEN_CSI='/usr/bin/csi'
cd '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.so' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.types' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.import.scm' : 'srfi-1.scm' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.egg'    : '/usr/bin/csc' -host -D compiling-extension -J -s -regenerate-import-libraries -setup-mode -I /mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1 -C -I/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1 '-O3' '-d0' 'srfi-1.scm'  -o '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.so'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.static.o' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.link' : 'srfi-1.scm' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.egg'   : '/usr/bin/csc' -regenerate-import-libraries -M -setup-mode -static -I /mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1 -emit-link-file '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.link' -host -D compiling-extension -c -unit srfi-1 -D compiling-static-extension -C -I/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1 '-O3' '-d0' 'srfi-1.scm' -o '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.static.o'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.import.so' : 'srfi-1.import.scm' : '/usr/bin/csc' -setup-mode -s -host -I /mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1 -C -I/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1 '-O3' '-d0' 'srfi-1.import.scm' -o '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.import.so'
