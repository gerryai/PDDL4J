(define (problem pb7)
   (:domain blocksworld)
   (:objects a b c d e f g)
   (:init (on-table a) (on-table b) (on-table c) (on-table d) (on-table e) 
          (on-table f) (on-table g)
          (clear a)  (clear b) (clear c) (clear d) (clear e) 
          (clear f)  (clear g) (arm-empty))
   (:goal (and (on a b) (on b c) (on c d) (on d e) (on e f) (on f g))))

