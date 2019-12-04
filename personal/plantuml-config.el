;; Configuration for Plantuml

(prelude-require-packages '(plantuml-mode))

(use-package plantuml-mode
  :ensure t
  :defer t
  :config
  (add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
  (plantuml-set-output-type "png")
  (setq plantuml-jar-path (expand-file-name "~/Apps/plantuml.jar"))
  (setq plantuml-default-exec-mode 'jar)
  )
