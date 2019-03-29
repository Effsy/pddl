(define (domain library)

(:requirements :typing :durative-actions :fluents :equality)

(:types
   container location - structure
   pile shelf cart - container
   charger pile shelf - location
   book - object
)

(:predicates
   (book-in-container ?book - book ?container - container)
   (is-adjacent ?container1 - structure ?container2 - structure)
)

(:functions
   (time-to-move-between-locations ?from - location ?to - location)
   (time-to-move-book)
   (number-of-spaces-in-container ?container - container)
   (battery-capacity ?cart - cart)
   (max-battery-capacity)
)

(:durative-action move-book
   :parameters (?from - container ?to - container ?book - book)
   :duration (= ?duration (time-to-move-book))
   :condition (and
       (at start (book-in-container ?book ?from))
       (at start (> (number-of-spaces-in-container ?to) 0))
       (at start (is-adjacent ?from ?to))
   )
   :effect (and
       (at start (not(book-in-container ?book ?from)))
       (at start (increase(number-of-spaces-in-container ?from) 1))
       (at end (book-in-container ?book ?to))
       (at end (decrease(number-of-spaces-in-container ?to) 1))
   )
)

(:durative-action move-cart-location
   :parameters (?from - location ?to - location ?cart - cart)
   :duration (= ?duration (time-to-move-between-locations ?from ?to))
   :condition (and
       (at start (is-adjacent ?from ?cart))
       (at start (is-adjacent ?cart ?from))
       (at start (> (battery-capacity ?cart) 5))
   )
   :effect (and
       (at start (not(is-adjacent ?from ?cart)))
       (at start (not(is-adjacent ?cart ?from)))
       (at end (is-adjacent ?to ?cart))
       (at end (is-adjacent ?cart ?to))
       (at end (decrease (battery-capacity ?cart) 5))
   )
)

(:durative-action charge
   :parameters (?charger - charger ?cart - cart)
   :duration (= ?duration 20)
   :condition (and
       (at start (is-adjacent ?charger ?cart))
       (at start (is-adjacent ?cart ?charger))
       ;(at start (< (battery-capacity ?cart) 100)) 
   )
   :effect (and
        (at end (increase (battery-capacity ?cart) 20))
   )
)

)