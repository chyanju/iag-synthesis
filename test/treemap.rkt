#lang rosette

; Script to test on Treemap.

(require "../engine.rkt")

(displayln "Parsing attribute grammar...")
(define treemap-grammar (read-grammar "benchmarks/treemap/treemap.grammar" 'IRoot))

(displayln "Generating attribute trees...")
(define treemap-examples (tree-examples treemap-grammar))

; The schedule sketch for which to synthesize a completion.
(define treemap-sketch
  (let* ([visitors `((Root ,(sched-hole))
                     (CountryContainer ,(sched-hole) ,(sched-hole))
                     (Region ,(sched-hole) ,(sched-hole))
                     (District ,(sched-hole) ,(sched-hole))
                     (VSquare  ,(sched-hole) ,(sched-hole))
                     (HSquare  ,(sched-hole) ,(sched-hole))
                     (PollingPlace ,(sched-hole)))]
         [pre (sched-traversal 'pre visitors)]
         [post (sched-traversal 'post visitors)])
    (sched-sequential pre (sched-sequential post pre))))

; Synthesis with dataflow-tracing symbolic evaluation.
(define (tracing:test-treemap)
  (tracing:complete-sketch treemap-grammar (make-hole-range treemap-grammar)
                           treemap-sketch treemap-examples))

; Synthesis with general-purpose symbolic evaluation (Rosette's engine).
(define (checking:test-treemap)
  (checking:complete-sketch treemap-grammar (make-hole-range treemap-grammar)
                            treemap-sketch treemap-examples))

(displayln "Synthesizing a schedule from sequential sketch...")
(define treemap-schedule (tracing:test-treemap))
(when treemap-schedule
  (display-schedule treemap-schedule))