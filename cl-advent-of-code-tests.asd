(asdf:defsystem #:cl-advent-of-code-tests
  :description "Test suite for The Advent of Code challenge."
  :author "Mateusz Malisz <maliszmat@gmail.com>"
  :license "MIT"
  :depends-on (#:cl-advent-of-code #:fiveam)
  :pathname "t"
  :components ((:file "package")
               (:file "inverse-captcha"))
  :perform (asdf:test-op (o s)
                         (uiop:symbol-call :cl-advent-of-code-tests :run-tests)))
