(in-package :advent)
(annot:enable-annot-syntax)

(defun next-number (number)
  (floor number 10))

(defun last-digit (number)
  (mod number 10))

@export
(defun calculate-sum (number)
  (let ((number-as-string (format nil "~D" number))
        (sum 0))
    (loop for num = number then next-num
          for next-num = (next-number num)
          for current = (last-digit num)
          for next = (last-digit next-num)
          until (zerop next)
          when (= current next) sum current into result
            ;; Take wrapping into account
            finally (return (+ result
                               (if (= current (last-digit number))
                                   current
                                   0))))))
