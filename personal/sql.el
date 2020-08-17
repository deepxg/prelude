(require 'sql)
(add-hook 'sql-interactive-mode-hook 'sql-set-sqli-buffer-generally)
(add-hook 'sql-interactive-mode-hook 'toggle-truncate-lines)
(add-hook 'sql-interactive-mode-hook (lambda ()
                                       (set-buffer-process-coding-system 'utf-8 'utf-8)
                                       (setq sql-prompt-regexp "^")
                                       (setq sql-prompt-cont-regexp "^")))
(setq sql-postgres-login-params (quote ((user :default "thom")
                                        (database :default "thom")
                                        server
                                        (port :default 5432))))
(add-to-list 'sql-postgres-options "--set=sslmode=require" t)
