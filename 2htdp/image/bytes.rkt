#lang racket
(provide image->bytes bytes->image)
(require racket/draw)
(require file/convertible)

(define (image->bytes img)
  (convert img 'png-bytes))

(define (bytes->image b)
  (make-object bitmap% (open-input-bytes b) 'png))
