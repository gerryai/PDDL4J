;; original name logistics.a
;; extended version of logistics_facts7h
;; (:length (:parallel 11))
;; optimal
;; #actions 54 #states 10^11
;;
;; note: by going to a non-typed representation
;;       of the problems, the instances become (somewhat)
;;       harder to solve.
;;       (larger propositional representation)
;;

(define (problem pb2)
    (:domain logistics)
    (:requirements :strips :typing) 
    (:objects
        package1 - package
        package2 - package
        package3 - package
        package4 - package
        package5 - package
        package6 - package
        package7 - package
        package8 - package

        airplane1 - airplane
        airplane2 - airplane

        pgh - city
        bos - city
        la - city

        pgh-truck truck
        bos-truck - truck
        la-truck - truck

        pgh-po - location
        bos-po - location
        la-po - location

        pgh-airport - (either location airport)
        bos-airport - (either location airport)
        la-airport - (either location airport)
    )
    (:init
        (in-city pgh-po pgh)
        (in-city pgh-airport pgh)

        (in-city bos-po bos)
        (in-city bos-airport bos)

        (in-city la-po la)
        (in-city la-airport la)

        (at package1 pgh-po)
        (at package2 pgh-po)
        (at package3 pgh-po)
        (at package4 pgh-po)
        (at package5 bos-po)
        (at package6 bos-po)
        (at package7 bos-po)
        (at package8 la-po)

        (at airplane1 pgh-airport)
        (at airplane2 pgh-airport)
       
        (at bos-truck bos-po)
        (at pgh-truck pgh-po)
        (at la-truck la-po)
    )
    (:goal (and
        (at package1 bos-po)
        (at package2 bos-airport)
        (at package3 la-po)
        (at package4 la-airport)
        (at package5 pgh-po)
        (at package6 pgh-airport)
        (at package7 pgh-po)
        (at package8 pgh-po)
    ))
)