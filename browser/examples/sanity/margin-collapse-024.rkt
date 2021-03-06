;; From file:///Users/yufeng/research/other/iag-synthesis/browser/examples/sanity/margin-collapse-024.html

(define-stylesheet doc-1
  ((tag div)
   [font-style normal]
   #;[font-variant-caps normal]
   [font-weight normal]
   #;[font-stretch normal]
   [font-size (px 20)]
   [line-height (em 1)]
   [font-family "Ahem"]
   #;[font-size-adjust none]
   #;[font-kerning auto]
   #;[font-optical-sizing auto]
   #;[font-variant-alternates normal]
   #;[font-variant-east-asian normal]
   #;[font-variant-ligatures normal]
   #;[font-variant-numeric normal]
   #;[font-variant-position normal]
   #;[font-language-override normal]
   #;[font-feature-settings normal]
   #;[font-variation-settings normal]
   [width (em 5)])
  ((id div1)
   [background-color transparent]
   #;[background-position-x (% 0)]
   #;[background-position-y (% 0)]
   #;[background-repeat repeat]
   #;[background-attachment scroll]
   #;[background-image url("support/margin-collapse-2em-space.png")]
   #;[background-size auto]
   #;[background-origin padding-box]
   #;[background-clip border-box]
   [height (em 4)])
  ((id div2)
   [background-color green]
   #;[background-position-x (% 0)]
   #;[background-position-y (% 0)]
   #;[background-repeat repeat]
   #;[background-attachment scroll]
   #;[background-image none]
   #;[background-size auto]
   #;[background-origin padding-box]
   #;[background-clip border-box]
   [height (em 1)])
  ((id div4)
   [background-color green]
   #;[background-position-x (% 0)]
   #;[background-position-y (% 0)]
   #;[background-repeat repeat]
   #;[background-attachment scroll]
   #;[background-image none]
   #;[background-size auto]
   #;[background-origin padding-box]
   #;[background-clip border-box]
   [height (em 1)])
  ((id div3)
   [background-color red]
   #;[background-position-x (% 0)]
   #;[background-position-y (% 0)]
   #;[background-repeat repeat]
   #;[background-attachment scroll]
   #;[background-image none]
   #;[background-size auto]
   #;[background-origin padding-box]
   #;[background-clip border-box])
  ((id div3)
   [margin-top (em 2)])
  ((id div4)
   [margin-top (em 2)]))

(define-fonts doc-1
  [16 "serif" 400 normal 12 4 0 0 19.2]
  [20 "Ahem" 400 normal 15 5 0 0 24])

(define-layout (doc-1 :matched true :w 1280 :h 737 :fs 16 :scrollw 0)
 ([VIEW :w 1280]
  ([BLOCK :x 0 :y 0 :w 1280 :h 96 :elt 0]
   ([BLOCK :x 8 :y 8 :w 1264 :h 80 :elt 3]
    ([BLOCK :x 8 :y 8 :w 100 :h 80 :elt 4]
     ([BLOCK :x 8 :y 8 :w 100 :h 20 :elt 5])
     ([BLOCK :x 8 :y 68 :w 100 :h 20 :elt 6]
      ([BLOCK :x 8 :y 68 :w 100 :h 20 :elt 7])))))))

(define-document doc-1
  ([html :num 0]
   ([head :num 1]
    ([link :num 2]))
   ([body :num 3]
    ([div :num 4 :id div1]
     ([div :num 5 :id div2])
     ([div :num 6 :id div3]
      ([div :num 7 :id div4]))) " ")))

(define-problem doc-1
  :title ""
  :url "file:///Users/yufeng/research/other/iag-synthesis/browser/examples/sanity/margin-collapse-024.html"
  :sheets firefox doc-1
  :fonts doc-1
  :documents doc-1
  :layouts doc-1
  :features css:font-size float:0)

