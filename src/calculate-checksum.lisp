(in-package :advent)
(annot:enable-annot-syntax)

@export
(defun checksum-line (line)
  (let* ((numbers (mapcar #'parse-integer (cl-ppcre:split "\\W" line)))
         (min (car numbers))
         (max (car numbers)))
    (dolist (current numbers (- max min))
      (setf min (min current min))
      (setf max (max current max)))))

@export
(defun checksum (file)
  (with-open-file (in file)
    (loop for line = (read-line in nil 'eof nil)
          until (eql line 'eof)
          summing (checksum-line line))))
