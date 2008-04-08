(define (problem pb4)
   (:domain blocksworld)
   (:objects a b c d)
   (:init  (on-table a) (on b a) (on c b) (on d c) (clear d) 
            (arm-empty))

   (:goal (and (on b a) (on c b) (on a d))))