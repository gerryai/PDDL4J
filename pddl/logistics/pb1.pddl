;; original name rocket_ext.a
;;

(define (problem pb1)
  (:domain logistics)
  (:requirements :strips :typing) 
  (:objects mxf - package
	    avrim - package
	    alex - package
	    jason - package
	    pencil - package
	    paper - package
	    april - package
	    michelle - package
	    betty - package
	    lisa - package
	    airplane1 - airplane
	    airplane2 - airplane
	    lon-airport - airport
	    par-airport -  airport
	    jfk-airport -  airport
	    bos-airport -  airport)
  (:init (at airplane1 jfk-airport)
	 (at airplane2 bos-airport)
	 (at mxf par-airport)
	 (at avrim par-airport)
	 (at alex par-airport)
	 (at jason jfk-airport)
	 (at pencil lon-airport)
	 (at paper lon-airport)
	 (at michelle lon-airport)
	 (at april lon-airport)
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