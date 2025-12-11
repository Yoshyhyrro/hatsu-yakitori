#!/bin/sh

set -e
PATH='/usr/bin':$PATH
export CHICKEN_CC='x86_64-linux-gnu-gcc'
export CHICKEN_CXX='x86_64-linux-gnu-g++'
export CHICKEN_CSC='/usr/bin/csc'
export CHICKEN_CSI='/usr/bin/csi'
cd '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.so' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.types' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.import.scm' : 'srfi-69.scm' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.egg'    : '/usr/bin/csc' -host -D compiling-extension -J -s -regenerate-import-libraries -setup-mode -I /mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69 -C -I/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69 '-O3' '-d0' 'srfi-69.scm'  -o '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.so'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.static.o' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.link' : 'srfi-69.scm' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.egg'   : '/usr/bin/csc' -regenerate-import-libraries -M -setup-mode -static -I /mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69 -emit-link-file '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.link' -host -D compiling-extension -c -unit srfi-69 -D compiling-static-extension -C -I/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69 '-O3' '-d0' 'srfi-69.scm' -o '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.static.o'

'/usr/bin/chicken-do' '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.import.so' : 'srfi-69.import.scm' : '/usr/bin/csc' -setup-mode -s -host -I /mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69 -C -I/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69 '-O3' '-d0' 'srfi-69.import.scm' -o '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.import.so'
