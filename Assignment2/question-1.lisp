(defun take-n (lst n)
  (cond 
    ((< n 1) nil)
    ((> n (list-length lst)) (copy-list lst))
    ( t (let 
        ((i (- (list-length lst) n)))
        (getListAfter lst i)))))

(defun getListAfter (lst i)
    (cond 
        ((null lst) '())
        ((= i 0) (cons (car lst) (getListAfter (cdr lst) i)))
        (t (getListAfter (cdr lst) (- i 1)))))

;;; Testing
(format t "Calling (take-n '(1 2 3) 2) will return: ~a ~%" (take-n '(1 2 3) 2))
(format t "Calling (take-n '(1 2 3) -1) will return: ~a ~%" (take-n '(1 2 3) -1))
(format t "Calling (take-n '(1 2 3) 6) will return: ~a ~%" (take-n '(1 2 3) 6))
