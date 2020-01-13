(require 'windmove)

(global-set-key (kbd "C-S-b") 'windmove-left)
(global-set-key (kbd "C-S-f") 'windmove-right)
(global-set-key (kbd "C-S-p") 'windmove-up)
(global-set-key (kbd "C-S-n") 'windmove-down)
(global-set-key (kbd "M-RET") 'toggle-frame-fullscreen)
(setq windmove-wrap-around t)
