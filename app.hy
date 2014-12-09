; Copyright (c) Paul R. Tagliamonte <tag@pault.ag>, 2013 under the terms of
; hy.

(require hy.contrib.meth)
(import [flask [Flask render-template]])


(setv app (Flask "__main__"))


(route repl "/" []
  (render-template "index.html"))


(route about "/about" []
  (render-template "about.html"))


(route contact "/contact" []
  (render-template "contact.html"))


(route articles "/articles" []
  (render-template "articles.html"))


(route talks "/talks" []
  (render-template "talks.html"))
