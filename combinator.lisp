(define (compose f g)
	(define (the-composition . args)
		(f (apply g args)))
	the-composition)