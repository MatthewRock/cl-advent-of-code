(in-package #:cl-aoct)

(def-suite checksum-suite
  :in cl-aoct-suite)

(in-suite checksum-suite)

(test line-checksum
  (is (= 8 (checksum-line "5 1 9 5")))
  (is (= 4 (checksum-line "7 5 3")))
  (is (= 6 (checksum-line "2 4 6 8"))))
