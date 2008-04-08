;; original name logistics.b
;; (:length (:parallel 13))
;; optimal
;; #actions 47 #states 10^8
;;

(define (problem pb5)
    (:domain logistics)
    (:requirements :strips :typing)
    (:objects
        package1 - PACKAGE
        package2 - PACKAGE
        package3 - PACKAGE
        package5 - PACKAGE
        package7 - PACKAGE

        airplane1 - AIRPLANE
        airplane2 - AIRPLANE

        pgh - CITY
        bos - CITY
        la - CITY
        ny - CITY

        pgh-truck - TRUCK
        bos-truck - TRUCK
        la-truck - TRUCK
        ny-truck - TRUCK

        pgh-po - LOCATION
        bos-po - LOCATION
        la-po - LOCATION
        ny-po - LOCATION

        pgh-airport - (either LOCATION AIRPORT)
        bos-airport - (either LOCATION AIRPORT)
        la-airport - (either LOCATION AIRPORT)
        ny-airport - (either LOCATION AIRPORT)
    )
    (:init
        (in-city pgh-po pgh)
        (in-city pgh-airport pgh)

        (in-city bos-po bos)
        (in-city bos-airport bos)

        (in-city la-po la)
        (in-city la-airport la)

        (in-city ny-po ny)
        (in-city ny-airport ny)

        (at package1 pgh-po)
        (at package2 pgh-po)
        (at package3 pgh-po)
        (at package5 bos-po)
        (at package7 ny-po)

        (at airplane1 pgh-airport)
        (at airplane2 pgh-airport)

        (at bos-truck bos-po)
        (at pgh-truck pgh-po)
        (at la-truck la-po)
        (at ny-truck ny-po)
    )
    (:goal (and
        (at package1 bos-po)
        (at package2 ny-po)
        (at package3 la-po)
        (at package5 pgh-po)
        (at package7 pgh-po)
    ))
)