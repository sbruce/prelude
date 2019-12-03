(use-package python-mode
  :ensure t
  :defer t
  :init
  (progn
    (add-to-list 'auto-mode-alist '("SCons[a-zA-Z_]*" . python-mode))
    )
  )

(use-package yasnippet)
