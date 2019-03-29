
(define (problem busy-day)
(:domain library)
(:objects
  cart1 - cart
  pile1 - pile
  shelf1 - shelf
)

(:init

   (= (time-to-move-between-locations shelf1 pile1) 0)

)

(:goal (and
  (is-adjacent cart1 pile1)
)))

