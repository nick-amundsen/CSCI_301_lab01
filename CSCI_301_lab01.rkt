#lang racket
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CSCI 301, Winter 2018
;;
;; Lab #1
;;
;; Nick Amundsen
;; W01323151
;;
;; The purpose of this program is to
;; use recursion to figure out pi
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(provide make-pi)

;;Recursive function with parameters numerator, denominator, previous sum, and the tolerence
(define (pi-recursive num den sum tolerance)
  (cond
    [(< (/ (abs num) den) tolerance) sum]
    [else (pi-recursive (* -1.0 num) (+ den 2.0) (+ sum (/ num den)) tolerance)]))

;;Rhis function takes our tolerenne input and runs the recursive function
(define make-pi
(lambda (tolerance) (pi-recursive 4.0 1.0 0.0 tolerance)))
