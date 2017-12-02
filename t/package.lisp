(defpackage #:cl-advent-of-code-tests
  (:use :cl :fiveam #:cl-advent-of-code)
  (:export run-tests)
  (:nicknames :cl-aoct))

(in-package #:cl-aoct)

(defun run-tests ()
  (run! 'cl-aoct-suite))

(def-suite cl-aoct-suite
    :description "Tests for The Advent of Code.")
