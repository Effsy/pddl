(define (problem busy-day)
(:domain library)
(:objects
  shelf1 shelf2 - container
  cart1 - cart
  pile - container
  book1 book2 book3 - book
)

(:init
  (book-in-container book1 pile)
  (book-in-container book2 pile)
  (book-in-container book3 pile)
  (= (number-of-spaces-in-container shelf1) 50)
  (= (number-of-spaces-in-container shelf2) 30)
  (= (number-of-spaces-in-container cart1) 20)
  (is-adjacent cart1 pile)
  (is-shelf shelf1)
  (is-shelf shelf2)
  (= (time-to-move-between-locations shelf1 shelf2) 10)
  (= (time-to-move-between-locations pile shelf1) 5)
  (= (time-to-move-between-locations pile shelf2) 6)
  (= (time-to-move-book) 1)
)

(:goal (and
   (= (number-of-spaces-in-container cart1) 0)))
)

