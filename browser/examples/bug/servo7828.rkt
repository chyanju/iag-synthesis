;; From file:///Users/yufeng/research/other/iag-synthesis/browser/examples/bug/servo7828.html

(define-stylesheet doc-1
  ((tag div)
   [width (px 100)]
   [height (px 100)])
  ((id a)
   [position absolute]
   [top (px 20)]
   [left (px 20)]
   [background-color red]
   #;[background-position-x (% 0)]
   #;[background-position-y (% 0)]
   #;[background-repeat repeat]
   #;[background-attachment scroll]
   #;[background-image none]
   #;[background-size auto]
   #;[background-origin padding-box]
   #;[background-clip border-box])
  ((id b)
   [float left]
   [position relative]
   [background-color green]
   #;[background-position-x (% 0)]
   #;[background-position-y (% 0)]
   #;[background-repeat repeat]
   #;[background-attachment scroll]
   #;[background-image none]
   #;[background-size auto]
   #;[background-origin padding-box]
   #;[background-clip border-box]))

(define-fonts doc-1
  [16 "serif" 400 normal 12 4 0 0 19.2])

(define-layout (doc-1 :matched true :w 1280 :h 703 :fs 16 :scrollw 0)
 ([VIEW :w 1280]
  ([BLOCK :x 0 :y 0 :w 1280 :h 108 :elt 0]
   ([BLOCK :x 8 :y 8 :w 1264 :h 0 :elt 3]
    ([BLOCK :x 20 :y 20 :w 100 :h 100 :elt 4])
    ([BLOCK :x 8 :y 8 :w 100 :h 100 :elt 5])))))

(define-document doc-1
  ([html :num 0]
   ([head :num 1]
    ([link :num 2]))
   ([body :num 3]
    ([div :num 4 :id a]) " "
    ([div :num 5 :id b]) " ")))

(define-problem doc-1
  :title ""
  :url "file:///Users/yufeng/research/other/iag-synthesis/browser/examples/bug/servo7828.html"
  :sheets firefox doc-1
  :fonts doc-1
  :documents doc-1
  :layouts doc-1
  :features css:position css:float empty-text float:1)

