(use-package lsp-mode
  :hook
  (python-mode . lsp)
  (cc-mode . lsp)
  :commands lsp)

(setq lsp-log-io t)

(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)
(use-package dap-mode)
(use-package dap-python)
(use-package dap-lldb)

(dap-register-debug-template "Debug Pypalomar"
  (list :type "python"
        :args "-i"
        :cwd "c:/Firmware/KE28_Product.git/Modules/Diag/"
        :env '(("DEBUG" . "1"))
        :program (expand-file-name "c:/Firmware/KE28_Product.git/Modules/Diag/pypalomar/development_env.py")
        :request "launch"
        :name "My App"))

(dap-register-debug-template "Python :: Pytest Pypalomar"
  (list :type "python"
        :args ""
        :cwd (expand-file-name "c:/Firmware/KE28_Product.git/Modules/Diag/pypalomar/")
        :program nil
        :module "pytest"
        :request "launch"
        :name "Python :: Pytest Pypaloamr"))
