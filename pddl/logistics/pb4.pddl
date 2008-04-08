;; original name rocket_ext.b
;; (:length (:parallel 7))
;; optimal
;;

(define (problem pb4)
  (:domain logistics)
  (:requirements :strips :typing)
  (:objects mxf - PACKAGE
	    avrim - PACKAGE
	    alex - PACKAGE
	    jason  - PACKAGE
	    pencil  - PACKAGE
	    paper  - PACKAGE
	    april  - PACKAGE
	    michelle  - PACKAGE
	    betty  - PACKAGE
	    lisa  - PACKAGE
	    airplane1 - AIRPLANE
	    airplane2 - AIRPLANE
	    lon-airport  - AIRPORT
	    par-airport   - AIRPORT
	    jfk-airport   - AIRPORT
	    bos-airport  - AIRPORT)
  (:init (at airplane1 jfk-airport)
	 (at airplane2 par-airport)
	 (at mxf jfk-airport)
	 (at avrim par-airport)
	 (at alex bos-airport)
	 (at jason jfk-airport)
	 (at pencil par-airport)
	 (at paper lon-airport)
	 (at michelle bos-airport)
	 (at april par-airport)
	 (at betty lon-airport)
	 (at lisa lon-airport)
	 )
  (:goal (and 
	  (at mxf bos-airport)
	  (at avrim jfk-airport)
	  (at pencil bos-airport)
	  (at alex jfk-airport)
	  (at april bos-airport)
	  (at lisa par-airport)
	  (at michelle jfk-airport)
	  (at jason bos-airport)
	  (at paper par-airport)
	  (at betty jfk-airport)
	  )
	 )
  )