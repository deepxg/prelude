(require 'cider)
(require 'cider-test)

(setq cider-repl-history-file "~/.repl-history")

(add-hook 'clojure-mode-hook 'aggressive-indent-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)
;(add-hook 'clojure-mode-hook 'clj-refactor-mode)
(add-hook 'cider-mode-hook
          (lambda ()
            (add-hook 'after-save-hook
                      (lambda ()
                        (when (clojure-find-ns)
                          (cider-load-buffer)
                          (cider-test-run-loaded-tests nil)))
                      nil t)))
