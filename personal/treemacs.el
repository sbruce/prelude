(use-package treemacs
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  :config
  (progn
    (setq treemacs-sorting 'alphabetic-desc)


    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)

    )
  :bind
  (:map global-map
        ("M-0"     . treemacs-select-window)
        ("C-x t t"   . treemacs)
        )
  )

(use-package treemacs-evil
  :after treemacs evil
  :ensure t)

(use-package treemacs-magit
  :after treemacs magit
  :ensure t)
