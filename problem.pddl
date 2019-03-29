
(define (problem busy-day)
(:domain library)
(:objects
  shelf1 - shelf
  robot1 - robot
  pile1 - pile
  book1 book2 - book
)

(:init
  (book-in-container book1 pile1)
  (book-in-container book2 pile1)

  (= (number-of-spaces-in-container shelf1) 10)
  (= (number-of-spaces-in-container robot1) 2)

  (= (time-to-move-between-locations pile1 shelf1) 5)
  (= (time-to-move-between-locations shelf1 pile1) 5)

  (= (time-to-move-book) 1)
  
  (is-adjacent robot1 pile1)
  (is-adjacent pile1 robot1)
)

(:goal (and
   (book-in-container book1 shelf1)
   (book-in-container book2 shelf1)
   ))
)

