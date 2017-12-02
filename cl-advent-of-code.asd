;;;; cl-advent-of-code.asd

(asdf:defsystem #:cl-advent-of-code
  :description "Common Lisp repository with solutions to The Advent of Code"
  :author "Mateusz Malisz <maliszmat@gmail.com>"
  :license "MIT"
  :depends-on (#:alexandria
               #:serapeum
               #:cl-annot)
  :serial t
  :pathname "src"
  :components ((:file "package")
               (:file "inverse-captcha"))
  :in-order-to ((asdf:test-op
                 (asdf:test-op #:cl-advent-of-code-tests))))
