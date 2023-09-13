#!/usr/bin/env -S guile -s
!#




(define (acc op sequence final-result)
  (if (eq? sequence '())
      final-result
      (op (car sequence) (acc op (cdr sequence) final-result))))

(define (adder-acc sequence)
  (acc + sequence 0))

(define (product-acc sequence)
  (acc * sequence 1))
