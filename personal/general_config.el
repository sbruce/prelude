;; Allow selecting all commands in Helm (M-x). Otherwise, you need to press C-o to change to the bottom list
(setq helm-move-to-line-cycle-in-source nil)


(prelude-require-package 'solarized-theme)
(load-theme 'solarized-light)

(setq whitespace-line-column 200)
(set-fill-column 200)
