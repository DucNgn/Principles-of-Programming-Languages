(defun reverse-cut-in-half (lst)
    (let
        ((half (ceiling (list-length lst) 2)))
        (reverse (append (list(getFirstList 1 lst half))  (list (getSecondList 1 lst half) ))
)))

(defun getFirstList (i lst half) 
    (cond
    ((> i half) '())
    (t (cons (car lst) (getFirstList (+ 1 i) (cdr lst) half)))))

(defun getSecondList (i lst half)
    (cond 
    ((null lst) '())
    ((<= i half) (getSecondList (+ 1 i) (cdr lst) half))
    (t (cons (car lst) (getSecondList (+ 1 i) (cdr lst) half)))))

(format t "Running (reverse-cut-in-half '(1 2 3)) results in ~a ~%" 
        (reverse-cut-in-half '(1 2 3)))
(format t "Running (reverse-cut-in-half '((1) (2) (3) (4))) results in ~a ~%" 
        (reverse-cut-in-half '((1) (2) (3) (4))))
