(in-package #:cl-aoct)

(def-suite inverse-captcha-suite
  :in cl-aoct-suite)

(in-suite inverse-captcha-suite)

(test empty-sum
  (is (= 0 (calculate-sum 1234))))

(test normal-sum
  (is (= 4 (calculate-sum 1222))))

(test wrapping
  (is (= 9 (calculate-sum 91212129)))
  (is (= 4 (calculate-sum 1111))))
