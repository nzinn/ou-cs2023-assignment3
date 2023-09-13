#!/usr/bin/env -S guile -e main -s
!#


(use-modules (ice-9 rdelim))



(define (get-input)
  (map string->number (string-split (read-line) #\space)))

(define (acc op sequence final-result)
  (if (eq? sequence '())
      final-result
      (op (car sequence) (acc op (cdr sequence) final-result))))

(define (adder-acc sequence)
  (acc + sequence 0))

(define (product-acc sequence)
  (acc * sequence 1))


(define (main args)
  (format #t "Enter a sequence of numbers: \n")
  (let ((nums (get-input)))
    (format #t "Sum: ~a\n" (adder-acc nums))
    (format #t "Product: ~a\n" (product-acc nums))))


