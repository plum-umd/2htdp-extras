#lang racket
;; Provide accessors to universe bundles
(provide bundle-state bundle-mails bundle-bad)

(require 2htdp/universe)

(define (bundle-state b)
  (bundle-get b 0))
(define (bundle-mails b)
  (bundle-get b 1))
(define (bundle-bad b)
   (bundle-get b 2))      

(define bundle-get
  (call-with-values
   (λ () (struct-info (make-bundle 1 '() '())))
   (λ x (call-with-values
         (λ () (struct-type-info (first x)))
         (λ r (fourth r))))))
