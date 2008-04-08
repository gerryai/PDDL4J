;; original name logistics.easy
;; optimal
;;

(define (problem pb3)
    (:domain logistics)
    (:requirements :strips :typing) 
    (:objects
        package1 - package
        package2 - package
        package3 - package

        airplane1 - airplane
        airplane2 - airplane

        pgh - city
        bos - city
        la - city

        pgh-truck - truck
        bos-truck - truck
        la-truck - truck

        pgh-po - location
        bos-po - location
        la-po - location

        pgh-central - location
        bos-central - location
        la-central - location

        pgh-airport - (either airport location)
        bos-airport - (either airport location)
        la-airport - (either airport location))
    (:init
        (in-city pgh-po pgh)
        (in-city pgh-airport pgh)
        (in-city pgh-central pgh)

        (in-city bos-po bos)
        (in-city bos-airport bos)
        (in-city bos-central bos)

        (in-city la-po la)
        (in-city la-airport la)
        (in-city la-central la)

        (at package1 pgh-po)
        (at package2 pgh-po)
        (at package3 pgh-po)

        (at airplane1 pgh-airport)
        (at airplane2 pgh-airport)

        (at bos-truck bos-po)
        (at pgh-truck pgh-po)
        (at la-truck la-po)

    )
    (:goal (and
        (at package1 bos-po)
        (at package2 la-po)
        (at package3 bos-po)
    ))
)
