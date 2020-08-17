(add-hook 'python-mode-hook (lambda ()
                              (elpy-enable)
                              (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
                              (add-hook 'elpy-mode-hook 'flycheck-mode)))

(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
