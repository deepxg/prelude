(require 'company)

(global-company-mode '(not shell-mode))
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 3)
(setq company-auto-complete t)
(setq company-auto-complete-chars "(){}[],.:")
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map [tab] 'company-complete)
(define-key company-active-map (kbd "TAB") 'company-complete)
(define-key company-active-map (kbd "S-SPC") 'company-complete-common)
