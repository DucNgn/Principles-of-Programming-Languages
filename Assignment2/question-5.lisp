(defun balancedp (lst)
    (let ((outerlength (list-length lst)) (result t)) ;;; result contains the default value of true
    (loop for elm in lst
          do (cond 
                 ((listp elm) 
                  (if (= outerlength (list-length elm)) 
                    (balancedp elm)
                    (progn
                        (setq result nil)
                        nil
                    )))
                 (t t) ;;; if x is an element
    ))
    result))

;;; Examples:
(format t "Running (balancedp '(a b c)) ~a ~%" (balancedp '(a b c)))
(format t "Running (balancedp '(a b c d)) ~a ~%" (balancedp '(a b c d)))
(format t "Running (balancedp '(hello world (this is a test))) ~a ~%" (balancedp '(hello world (this is a test))))
(format t "Running (balancedp '(hello world (this assignment))) ~a ~%" (balancedp '(hello world (this assignment))))
(format t "Running (balancedp '(hello world (this is assignment))) ~a ~%" (balancedp '(hello world (this is assignment))))
(format t "Running (balancedp '((1 2) (3 (1)))) ~a ~%" (balancedp '((1 2) (3 (1)))))


