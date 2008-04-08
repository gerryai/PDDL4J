(define (problem pb5)
   (:domain blocksworld)
   (:objects a b c d e)
   (:init (on-table a) (on-table b) (on-table c) (on-table d) (on-table e)  
          (clear a)  (clear b) (clear c) (clear d) (clear e) (arm-empty))
   (:goal (and (on a b) (on b c) (on c d) (on d e))))


