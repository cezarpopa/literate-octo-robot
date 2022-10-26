(define (parallel-combine h f g)
	define (the-combination . args)
		(h (apply f args) (apply g args))
	the-combination)

((parallel-combination list
		(lambda (x y z) (list 'foo x y z)
		(lambda (u v w) (list 'foo u v w)))
'a 'b 'c)