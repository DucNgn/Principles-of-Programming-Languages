(defun flattenonly (l) 
  (cond ((null l) nil)
        ((numberp (car l)) (cons (car l) (flattenonly (cdr l))))
        ((listp (car l))  (append (flattenonly (car l)) (flattenonly (cdr l))))
         (t (flattenonly (cdr l)))
))
  
(defun remove-all (lst elt)
(cond ((null lst) nil) 
      ((equal(car lst) elt)(remove-all (cdr lst) elt))
      (t (cons (car lst) (remove-all (cdr lst) elt))))) 

(defun remove2 (l)
    (cond
        ((null l) l)
        ((member (car l) (cdr l)) (remove2 (cons (car l) (remove-all (cdr l) (car l)))))
        (t (cons (car l) (remove2 (cdr l))))))
        
(defun flatten(l)

(remove2 (flattenonly l))
)
;;Testing
 (format t "(flatten '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2)))) will output: ~a ~%" (flatten '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2)))))
  (format t "(flatten '(c 8.5 (1 3 1 (4)) (((66 no))))) will output: ~a ~%" (flatten '(c 8.5 (1 3 1 (4)) (((66 no))))))
