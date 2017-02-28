;; Lisp exercises on lists

;;
;; Preamble: Syntax
;;

;; An empty list
nil

;; A list with a single element
(list 2)

;; A list with an empty tail (same as above)
(list 2 nil)

;; A list created with cons
(cons 2 nil)

;; A list with more elements created with cons
(cons 2 (cons 4 nil))

;; Append a list to another with append
(append (list 1 2) (list 3 4))

;; Reverse a list with nreverse
(nreverse (list 1 2 3))

;;
;; Exercises
;;

;; Exercise 1
;; Create a list using 'cons'. The list should contain (42 69 613 nil)
(write-line"List: ")
(write(cons 42 (cons 69 (cons 613 nil))))
(write-line"")


;; Exercise 2
;; Take the first element of the list below
(write-line"First: ")

(write (car(cons 8 (cons 1 nil))))
(write-line"")



;; Exercise 3
;; Take the tail of the list below
(write-line"tail ")

(write(last (cons 8 (cons 1 nil))))
(write-line"")


;; Exercise 4
;; Append (1 2) to the list below
(write-line"append: ")
(write(append(cons 3 (cons 4 nil))(list 1 2)))
(write-line"")


;; Exercise 5
;; Reverse the list below
(write-line"Reverse")
(write(Reverse(list 74 53 42)))
