(defun collatz (input)
    (setq n (car input))
    (setq output '())
    (cond 
        ((> n 1)
         (progn
         (generatelist n output)
         (setq output (reverse output))))
        ((= n 1) (setq output '(1)) ) 
        ((> (list-length input) 1) 
         (progn
            (print "Too many arguments.")
            nil))
        (t (progn 
             (print "Invalid input") 
                nil))
    )
    output)

(defun generatelist (num modifiedlist)
    (if (not (= 1 num))
        (progn
            (if (= 0 (rem num 2))
                 (setq x (/ num 2))
                 (setq x (+ 1 (* 3 num))))
             (setf output (cons x modifiedlist))
             (generatelist x output))
     )
 )

;;; Get a list of lists number from i to n
(defun getNumbers (i n)
    (cond
        ((> i n) '())
        (t (cons (cons i nil) (getNumbers (+ 1 i) n)))
      )
)

(loop for x in (getNumbers 1 20)
      do (format t "~a~%" (collatz x)))

;;; Example for invalid input
(format t "~a" (collatz '(-7)))
(format t "~a" (collatz '(-3 -2)))
