(define (problem busy-day)
; Calm Day
; Two Robots
; Big Library

(:domain library)
(:objects
  shelf1 shelf2 shelf3 shelf4 shelf5 shelf6 shelf7 shelf8 - shelf
  robot1 robot2 - robot
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
  (= (number-of-spaces-in-container shelf7) 10)
  (= (number-of-spaces-in-container shelf8) 10)
  
  (= (number-of-spaces-in-container robot1) 4)
  (= (number-of-spaces-in-container robot2) 4)

  ; pile1
  (= (time-to-move-between-locations pile1 shelf1) 15)
  (= (time-to-move-between-locations shelf1 pile1) 15)

  (= (time-to-move-between-locations pile1 shelf2) 10)
  (= (time-to-move-between-locations shelf2 pile1) 10)
  
  (= (time-to-move-between-locations pile1 shelf3) 10)
  (= (time-to-move-between-locations shelf3 pile1) 10)
  
  (= (time-to-move-between-locations pile1 shelf4) 15)
  (= (time-to-move-between-locations shelf4 pile1) 15)
  
  (= (time-to-move-between-locations pile1 shelf5) 15)
  (= (time-to-move-between-locations shelf5 pile1) 15)

  (= (time-to-move-between-locations pile1 shelf6) 10)
  (= (time-to-move-between-locations shelf6 pile1) 10)

  (= (time-to-move-between-locations pile1 shelf7) 10)
  (= (time-to-move-between-locations shelf7 pile1) 10)

  (= (time-to-move-between-locations pile1 shelf8) 15)
  (= (time-to-move-between-locations shelf8 pile1) 15)

  ; shelf1
  (= (time-to-move-between-locations shelf1 shelf2) 10)
  (= (time-to-move-between-locations shelf2 shelf1) 10)

  (= (time-to-move-between-locations shelf1 shelf3) 20)
  (= (time-to-move-between-locations shelf3 shelf1) 20)

  (= (time-to-move-between-locations shelf1 shelf4) 30)
  (= (time-to-move-between-locations shelf4 shelf1) 30)

  (= (time-to-move-between-locations shelf1 shelf5) 10)
  (= (time-to-move-between-locations shelf5 shelf1) 10)

  (= (time-to-move-between-locations shelf1 shelf6) 15)
  (= (time-to-move-between-locations shelf6 shelf1) 15)

  (= (time-to-move-between-locations shelf1 shelf7) 25)
  (= (time-to-move-between-locations shelf7 shelf1) 25)

  (= (time-to-move-between-locations shelf1 shelf8) 30)
  (= (time-to-move-between-locations shelf8 shelf1) 30)
  
  ; shelf2
  (= (time-to-move-between-locations shelf2 shelf3) 10)
  (= (time-to-move-between-locations shelf3 shelf2) 10)

  (= (time-to-move-between-locations shelf2 shelf4) 20)
  (= (time-to-move-between-locations shelf4 shelf2) 20)

  (= (time-to-move-between-locations shelf2 shelf5) 15)
  (= (time-to-move-between-locations shelf5 shelf2) 15)

  (= (time-to-move-between-locations shelf2 shelf6) 10)
  (= (time-to-move-between-locations shelf6 shelf2) 10)

  (= (time-to-move-between-locations shelf2 shelf7) 15)
  (= (time-to-move-between-locations shelf7 shelf2) 15)

  (= (time-to-move-between-locations shelf2 shelf8) 25)
  (= (time-to-move-between-locations shelf8 shelf2) 25)

  ; shelf3
  (= (time-to-move-between-locations shelf3 shelf4) 10)
  (= (time-to-move-between-locations shelf4 shelf3) 10)

  (= (time-to-move-between-locations shelf3 shelf5) 25)
  (= (time-to-move-between-locations shelf5 shelf3) 25)

  (= (time-to-move-between-locations shelf3 shelf6) 15)
  (= (time-to-move-between-locations shelf6 shelf3) 15)

  (= (time-to-move-between-locations shelf3 shelf7) 10)
  (= (time-to-move-between-locations shelf7 shelf3) 10)

  (= (time-to-move-between-locations shelf3 shelf8) 15)
  (= (time-to-move-between-locations shelf8 shelf3) 15)

  ; shelf4
  (= (time-to-move-between-locations shelf4 shelf5) 30)
  (= (time-to-move-between-locations shelf5 shelf4) 30)

  (= (time-to-move-between-locations shelf4 shelf6) 25)
  (= (time-to-move-between-locations shelf6 shelf4) 25)

  (= (time-to-move-between-locations shelf4 shelf7) 15)
  (= (time-to-move-between-locations shelf7 shelf4) 15)

  (= (time-to-move-between-locations shelf4 shelf8) 10)
  (= (time-to-move-between-locations shelf8 shelf4) 10)

  ; shelf5
  (= (time-to-move-between-locations shelf5 shelf6) 10)
  (= (time-to-move-between-locations shelf6 shelf5) 10)

  (= (time-to-move-between-locations shelf5 shelf7) 20)
  (= (time-to-move-between-locations shelf7 shelf5) 20)

  (= (time-to-move-between-locations shelf5 shelf8) 30)
  (= (time-to-move-between-locations shelf8 shelf5) 30)

  ; shelf6
  (= (time-to-move-between-locations shelf6 shelf7) 10)
  (= (time-to-move-between-locations shelf7 shelf6) 10)

  (= (time-to-move-between-locations shelf6 shelf8) 20)
  (= (time-to-move-between-locations shelf8 shelf6) 20)

  ; shelf7
  (= (time-to-move-between-locations shelf7 shelf8) 10)
  (= (time-to-move-between-locations shelf8 shelf7) 10)

  (= (time-to-move-book) 1)
  
  (is-adjacent robot1 pile1)
  (is-adjacent pile1 robot1)

  (is-adjacent robot2 pile1)
  (is-adjacent pile1 robot2)
)

(:goal (and
   (book-in-container book1 shelf1)
   (book-in-container book2 shelf2)
   (book-in-container book3 shelf3)
   (book-in-container book4 shelf4)
   (book-in-container book5 shelf5)
   (book-in-container book6 shelf6)
)))

