#!/bin/sh

set -e
cd '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.static.o' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-69.o'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.link' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-69.link'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11'
install -m 755 '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.so' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-69.so'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11'
install -m 755 '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.import.so' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-69.import.so'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.types' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-69.types'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11'
rm -f "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-69.egg-info'
cat >"${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-69.egg-info' <<ENDINFO
((installed-files
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-69.o"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-69.link"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-69.so"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-69.types"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-69.import.so")
 (version "0.4.3")
 (synopsis "SRFI-69 hash-table library")
 (author "The CHICKEN Team")
 (maintainer "The CHICKEN Team")
 (category data)
 (license "BSD")
 (components
   (extension srfi-69 (csc-options "-O3" "-d0") (types-file (predefined)))))
ENDINFO
