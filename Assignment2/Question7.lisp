
(defun collatz (input)
    (setq n (car input))
    (setq output '())
    (if (> n 0) 
        (generatelist n output)
        (print (Please enter a valid number))
     )
    (print (reverse output))
    )

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

(setf twentynumbers '((1) (2) (3) (4) (5) (6) (7) (8) (9) (10) (11) (12) (13) (14) (15) (16) (17) (18) (19) (20)))
(loop for x in twentynumbers
      do (collatz x))