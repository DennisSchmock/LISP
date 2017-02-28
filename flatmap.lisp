

;; Part 1 - Map
(defun myMap (f l)
  (if (equal l nil)
    nil (cons (funcall f (car l)) (myMap f (cdr l))
        )
  )
)
;;(myMap (lambda (a) (+ a 2)) (list 3 5 7 9)) ;; Should return: (5 7 9 11)

;; Part 2 - Flattening
(defun myFlatten (l)
  (if (equal l nil)
        nil
        (append (car l) (myFlatten (cdr l))
        )
  )
)
;;(write (myFlatten (list (list 1 2 3) (list 4 5 6)))) ;; should be (1 2 3 4 5 6)

;; Part 3 - Flat mapping
(defun myflatMap (f l)
  (let ((flatten (myFlatten l)))
    (myMap f flatten))
)
;;(write(myflatMap (lambda (a) (+ a 2)) (list (list 1 2 3) (list 4 5 6))))
