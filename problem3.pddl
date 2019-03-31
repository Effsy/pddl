(define (problem busy-day)
; Busy day
; Three robots
; Small Library

(:domain library)
(:objects
  shelf1 shelf2 shelf3 shelf4 - shelf
  robot1 robot2 robot3 - robot
  pile1 - pile
  book1 book2 book3 book4 book5 book6 book7 book8 book9 book10 book11 book12 book13 book14 book15 book16 book17 book18 book19 book20 - book
)

(:init
  (book-in-container book1 pile1)
  (book-in-container book2 pile1)
  (book-in-container book3 pile1)
  (book-in-container book4 pile1)
  (book-in-container book5 pile1)
  (book-in-container book6 pile1)
  (book-in-container book7 pile1)
  (book-in-container book8 pile1)
  (book-in-container book9 pile1)
  (book-in-container book10 pile1)
  (book-in-container book11 pile1)
  (book-in-container book12 pile1)
  (book-in-container book13 pile1)
  (book-in-container book14 pile1)
  (book-in-container book15 pile1)
  (book-in-container book16 pile1)
  (book-in-container book17 pile1)
  (book-in-container book18 pile1)
  (book-in-container book19 pile1)
  (book-in-container book20 pile1)

  (= (number-of-spaces-in-container shelf1) 10)
  (= (number-of-spaces-in-container shelf2) 10)
  (= (number-of-spaces-in-container shelf3) 10)
  (= (number-of-spaces-in-container shelf4) 10)
  
  (= (number-of-spaces-in-container robot1) 7)
  (= (number-of-spaces-in-container robot2) 7)
  (= (number-of-spaces-in-container robot3) 7)

  ; pile1
  (= (time-to-move-between-locations pile1 shelf1) 5)
  (= (time-to-move-between-locations shelf1 pile1) 5)

  (= (time-to-move-between-locations pile1 shelf2) 5)
  (= (time-to-move-between-locations shelf2 pile1) 5)
  
  (= (time-to-move-between-locations pile1 shelf3) 15)
  (= (time-to-move-between-locations shelf3 pile1) 15)
  
  (= (time-to-move-between-locations pile1 shelf4) 15)
  (= (time-to-move-between-locations shelf4 pile1) 15)
  
  ; shelf1
  (= (time-to-move-between-locations shelf1 shelf2) 5)
  (= (time-to-move-between-locations shelf2 shelf1) 5)

  (= (time-to-move-between-locations shelf1 shelf3) 5)
  (= (time-to-move-between-locations shelf3 shelf1) 5)

  (= (time-to-move-between-locations shelf1 shelf4) 10)
  (= (time-to-move-between-locations shelf4 shelf1) 10)
  
  ; shelf2
  (= (time-to-move-between-locations shelf2 shelf3) 10)
  (= (time-to-move-between-locations shelf3 shelf2) 10)

  (= (time-to-move-between-locations shelf2 shelf4) 5)
  (= (time-to-move-between-locations shelf4 shelf2) 5)

  ; shelf3
  (= (time-to-move-between-locations shelf3 shelf4) 5)
  (= (time-to-move-between-locations shelf4 shelf3) 5)

  (= (time-to-move-book) 1)
  
  (is-adjacent robot1 pile1)
  (is-adjacent pile1 robot1)

  (is-adjacent robot2 pile1)
  (is-adjacent pile1 robot2)

  (is-adjacent robot3 pile1)
  (is-adjacent pile1 robot3)
)

(:goal (and
   (book-in-container book1 shelf1)
   (book-in-container book2 shelf1)
   (book-in-container book3 shelf1)
   (book-in-container book4 shelf1)
   (book-in-container book5 shelf1)
   (book-in-container book6 shelf2)
   (book-in-container book7 shelf2)
   (book-in-container book8 shelf2)
   (book-in-container book9 shelf2)
   (book-in-container book10 shelf2)
   (book-in-container book11 shelf3)
   (book-in-container book12 shelf3)
   (book-in-container book13 shelf3)
   (book-in-container book14 shelf3)
   (book-in-container book15 shelf3)
   (book-in-container book16 shelf4)
   (book-in-container book17 shelf4)
   (book-in-container book18 shelf4)
   (book-in-container book19 shelf4)
   (book-in-container book20 shelf4)
)))

