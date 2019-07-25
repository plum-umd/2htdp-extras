#lang racket
(provide colors)
(require racket/draw)
(define colors (send the-color-database get-names))
