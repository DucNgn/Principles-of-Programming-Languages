;;; Main function to be called
(defun isBSTtree (tree)
    (checkBSTtree tree most-negative-fixnum most-positive-fixnum))

;;; Support function
(defun checkBSTtree(tree minV maxV)
    (cond 
    ((null (car tree)) t)
    ((or (< (car tree) minV) (> (car tree) maxV)) nil)
    (t (and (checkBSTtree (car (cdr tree)) minV (- (car tree) 1))  
            (checkBSTtree (car (cdr (cdr tree))) (+ 1 (car tree)) maxV)
))))

(defparameter *sampleBST* '(8 (3 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13) ()))))
(defparameter *sampleBadBST* '(8 (3 (5 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13) ()))))
(defparameter *test* '(8 (3) (10)))
(defparameter *testbad* '(8 (3 (1) (9)) (10)) )

(format t "Running (isBSTtree *test*) ~a ~%" (isBSTtree *test* ))
(format t "Running (isBSTtree *testbad*) ~a ~%" (isBSTtree *testbad* ))
(format t "Running (isBSTtree *sampleBST*) ~a ~%" (isBSTtree *sampleBST* ))
(format t "Running (isBSTtree *sampleBadBST*) ~a ~%" (isBSTtree *sampleBadBST* ))

