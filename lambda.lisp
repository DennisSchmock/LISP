;;
;; Prelude
;;

;; Lambdas are defined by the syntax (lambda (arguments) body)
(lambda (a) (+ a 2))

;; Lambdas should be called with the funcall function
(funcall (lambda (a) (+ a 2)) 4) ;; 6

;;
;; Exercises
;;

;; Exercise 1
;; Call this lambda in the same line!
(write (funcall(lambda (a b) (+ a b))1 2))

;; Exercise 2
;; Write a function that returns the lambda below
(defun myFunction()(lambda (a) (+ a 3)))

(write(funcall (myFunction) 1))

;; Exercise 3
;; Write a function that takes a lambda as an input and returns another lambda
;; which applies the input lambda twice
;; void myFun(int a);
;; myFun(myFun(2))
(defun lambdaTwice (inputLambda) (funcall inputLambda (funcall inputLambda 2)))

(write (lambdaTwice (lambda (a) (* a 2))))
