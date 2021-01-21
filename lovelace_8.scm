;; Project Lovelace #8 Blood Types.
(define o- '('o-))
(define o+ '('o- 'o+))
(define a- '('o- 'a-))
(define a+ '('o+ 'a+ 'o- 'a-))
(define b- '('o- 'b-))
(define b+ '('b- 'o- 'o+ 'b+))
(define ab- '('ab- 'o- 'b- 'a-))
(define ab+ '('ab+ 'ab- 'o+ 'o- 'a- 'a+ 'b- 'b+))

(define (in? elt lst)
    (cond ((null? lst) #f)
          ((equal? (car lst) elt) #t)
          (#t (in? elt (cdr lst)))))

(define (anyin? from lst)
    (cond ((null? from) #f)
          ((in? (car from) lst) #t)
          (#t (anyin? (cdr from) lst))))

;; Can someone with bloodtype BLOODTYPE survive if
;; avaliable donors are in LIST-OF-DONORS
(define (survive? bloodtype list-of-donors)
    (display (anyin? bloodtype list-of-donors)))

;; test 1 = #t   
(survive? b+ '('a- 'b+ 'ab+ 'o+ 'b+ 'b-))
;; test 2 = #f
(survive? ab- '('o+ 'ab+))

