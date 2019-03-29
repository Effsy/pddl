
(define (problem busy-day)
(:domain library)
(:objects
  shelf1 shelf2 - shelf
  cart1 - cart
  pile1 - pile
  book1 book2 book3 - book
)

(:init
  (book-in-container book1 pile1)
  (book-in-container book2 pile1)
  (book-in-container book3 pile1)
  (= (number-of-spaces-in-container shelf1) 50)
  (= (number-of-spaces-in-container shelf2) 30)
  (= (number-of-spaces-in-container cart1) 20)
  (is-adjacent cart1 pile1)
  (is-adjacent pile1 cart1)
  (= (time-to-move-between-locations shelf1 shelf2) 10)
  (= (time-to-move-between-locations pile1 shelf1) 5)
  (= (time-to-move-between-locations pile1 shelf2) 6)
  (= (time-to-move-book) 1)
)

(:goal (and
  (book-in-container book1 shelf1)
  (book-in-container book2 shelf2)
  (book-in-container book3 shelf2)
   ))
)

