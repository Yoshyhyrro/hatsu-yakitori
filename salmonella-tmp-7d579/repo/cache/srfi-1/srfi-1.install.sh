#!/bin/sh

set -e
cd '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.static.o' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-1.o'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.link' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-1.link'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11'
install -m 755 '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.so' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-1.so'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11'
install -m 755 '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.import.so' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-1.import.so'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11'
install -m 644 '/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-1/srfi-1.types' "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-1.types'

mkdir -p "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11'
rm -f "${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-1.egg-info'
cat >"${DESTDIR}"'/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-1.egg-info' <<ENDINFO
((installed-files
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-1.o"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-1.link"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-1.so"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-1.types"
   "/mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/lib/chicken/11/srfi-1.import.so")
 (version "0.5.1")
 (synopsis "SRFI-1 list library")
 (author "Olin Shivers")
 (maintainer "The CHICKEN Team")
 (category data)
 (test-dependencies test)
 (license "BSD")
 (components
   (extension srfi-1 (csc-options "-O3" "-d0") (types-file (predefined)))))
ENDINFO
