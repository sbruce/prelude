(use-package python-mode
  :ensure t
  :defer t
  :init
  (progn
    (add-to-list 'auto-mode-alist '("SCons[a-zA-Z_]*" . python-mode))
    (require 'dap-python)
    (dap-mode 1)
    (dap-ui-mode 1)
    (dap-tooltip-mode 1)
    (tooltip-mode 1)
    )
  :config
  :bind
  )


(dap-register-debug-template "Debug Pypalomar"
  (list :type "python"
        :args "-i"
        :cwd nil
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
