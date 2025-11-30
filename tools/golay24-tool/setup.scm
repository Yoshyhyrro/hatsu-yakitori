;; setup.scm for the golay24-tool egg
(use setup-api)

(compile-executable
  '("golay24_main.scm")
  "golay24-tool"
  '(-I ../../))

(install-program
  "golay24-tool"
  )
