(define (problem normal-day)
; Normal Day 
; Normal Library
; One Robot

(:domain library)
(:objects
  shelf1 shelf2 shelf3 shelf4 shelf5 shelf6 - shelf
  robot1 - robot
  pile1 - pile
  book1 book2 book3 book4 book5 book6 - book
)

(:init
  (book-in-container book1 pile1)
  (book-in-container book2 pile1)
  (book-in-container book3 pile1)
  (book-in-container book4 pile1)
  (book-in-container book5 pile1)
  (book-in-container book6 pile1)

  (= (number-of-spaces-in-container shelf1) 10)
  (= (number-of-spaces-in-container shelf2) 10)
  (= (number-of-spaces-in-container shelf3) 10)
  (= (number-of-spaces-in-container shelf4) 10)
  (= (number-of-spaces-in-container shelf5) 10)
  (= (number-of-spaces-in-container shelf6) 10)
  
  (= (number-of-spaces-in-container robot1) 10)

  ; pile1
  (= (time-to-move-between-locations pile1 shelf1) 5)
  (= (time-to-move-between-locations shelf1 pile1) 5)

  (= (time-to-move-between-locations pile1 shelf2) 5)
  (= (time-to-move-between-locations shelf2 pile1) 5)
  
  (= (time-to-move-between-locations pile1 shelf3) 5)
  (= (time-to-move-between-locations shelf3 pile1) 5)
  
  (= (time-to-move-between-locations pile1 shelf4) 5)
  (= (time-to-move-between-locations shelf4 pile1) 5)
  
  (= (time-to-move-between-locations pile1 shelf5) 5)
  (= (time-to-move-between-locations shelf5 pile1) 5)

  (= (time-to-move-between-locations pile1 shelf6) 5)
  (= (time-to-move-between-locations shelf6 pile1) 5)

  ; shelf1
  (= (time-to-move-between-locations shelf1 shelf2) 5)
  (= (time-to-move-between-locations shelf2 shelf1) 5)

  (= (time-to-move-between-locations shelf1 shelf3) 5)
  (= (time-to-move-between-locations shelf3 shelf1) 5)

  (= (time-to-move-between-locations shelf1 shelf4) 5)
  (= (time-to-move-between-locations shelf4 shelf1) 5)

  (= (time-to-move-between-locations shelf1 shelf5) 5)
  (= (time-to-move-between-locations shelf5 shelf1) 5)

  (= (time-to-move-between-locations shelf1 shelf6) 5)
  (= (time-to-move-between-locations shelf6 shelf1) 5)

  ; shelf2
  (= (time-to-move-between-locations shelf2 shelf3) 5)
  (= (time-to-move-between-locations shelf3 shelf2) 5)

  (= (time-to-move-between-locations shelf2 shelf4) 5)
  (= (time-to-move-between-locations shelf4 shelf2) 5)

  (= (time-to-move-between-locations shelf2 shelf5) 5)
  (= (time-to-move-between-locations shelf5 shelf2) 5)

  (= (time-to-move-between-locations shelf2 shelf6) 5)
  (= (time-to-move-between-locations shelf6 shelf2) 5)

  ; shelf3
  (= (time-to-move-between-locations shelf3 shelf4) 5)
  (= (time-to-move-between-locations shelf4 shelf3) 5)

  (= (time-to-move-between-locations shelf3 shelf5) 5)
  (= (time-to-move-between-locations shelf5 shelf3) 5)

  (= (time-to-move-between-locations shelf3 shelf6) 5)
  (= (time-to-move-between-locations shelf6 shelf3) 5)

  ; shelf4
  (= (time-to-move-between-locations shelf4 shelf5) 5)
  (= (time-to-move-between-locations shelf5 shelf4) 5)

  (= (time-to-move-between-locations shelf4 shelf6) 5)
  (= (time-to-move-between-locations shelf6 shelf4) 5)

  ; shelf5
  (= (time-to-move-between-locations shelf5 shelf6) 5)
  (= (time-to-move-between-locations shelf6 shelf5) 5)

  (= (time-to-move-book) 1)
  
  (is-adjacent robot1 pile1)
  (is-adjacent pile1 robot1)
)

(:goal (and
   (book-in-container book1 shelf1)
   (book-in-container book2 shelf2)
   (book-in-container book3 shelf3)
   (book-in-container book4 shelf4)
   (book-in-container book5 shelf5)
   (book-in-container book6 shelf6)
)))

