;Author: Nathan Jenkins 
;Date: Nov 23, 2018
;Class: CSC 3310
;Assignment: Write program in Scheme that takes multiple (x,y) cordinates and returns numerous assosiated geometric functions

(define (make-point xcor ycor)
	(define point (cons xcor ycor))
point
)

(define (getxcor point)
	(define xcor (car point)
	)
xcor
)

(define (getycor point)
	(define ycor (cdr point)
	)
ycor
)

(define (distance point1 point2) 
	(define x (expt(-(getxcor point2)(getxcor point1))2))
	(define y (expt(-(getycor point2)(getycor point1))2))
	(define finalDistance(sqrt(+ x y)))
finalDistance
)

(define(lawOfCos len1 len2 len3)
	(define top (-(+(expt len1 2)(expt len2 2))(expt len3 2)))
	(define bottom (* (* len1 len2)2))
	(define total(/ top bottom))
	(define finalAngle(* (acos total) 57.29577951)) ;180/pi
finalAngle
)

(define (calculate-triangle pointA pointB pointC)
	(define a(distance pointA pointB))
	(define b(distance pointB pointC))
	(define c(distance pointA pointC))
	(define angleA(lawOfCos a b c))
	(define angleB(lawOfCos c a b))
	(define angleC(lawOfCos b c a))
		
	(display "Area: ") (display (area pointA pointB pointC)) (newline)
	(display "Perimeter: ") (display (perimeter pointA pointB pointC)) (newline) (newline)

	(display "Side A: ")(display a) (newline)
	(display "Side B: ")(display b) (newline)
	(display "Side C: ")(display c) (newline) (newline)

	(display "Angle A: ")(display angleC) (newline)
	(display "Angle B: ")(display angleB) (newline)
	(display "Angle C: ")(display angleA) (newline)
)

(define (perimeter point1 point2 point3)
	(define a(distance point1 point2))
	(define b(distance point2 point3))
	(define c(distance point1 point3))
	(define total(+ a b c))
total
)

(define (area point1 point2 point3)
	(define a(*(-(getycor point2)(getycor point3))(getxcor point1)))
	(define b(*(-(getycor point3)(getycor point1))(getxcor point2)))
	(define c(*(-(getycor point1)(getycor point2))(getxcor point3)))
	(define area (abs(/(+ a b c)2)))
area
)

(define (is-line point1 point2 point3)
	(cond
		((= 0 (area point1 point2 point3)) #t)
		(else #f)
		)
)