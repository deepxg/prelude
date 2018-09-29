(require 'cider)
(require 'cider-test)

(setq cider-repl-history-file "~/.repl-history")

(add-hook 'clojure-mode-hook 'aggressive-indent-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'cider-mode-hook
          (lambda ()
            (add-hook 'after-save-hook
                      (lambda ()
                        (when (clojure-find-ns)
                          (cider-load-buffer)
                          (cider-test-run-loaded-tests)))
                      nil t)))

(when (string-equal system-type "windows-nt")
    (setq cider-lein-command "lein.bat"))
