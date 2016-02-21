(global-set-key (kbd "<home>") 'beginning-of-line)
(global-set-key (kbd "<end>") 'end-of-line)
(global-set-key (kbd "C-L") 'join-line-from-below)
(global-set-key [s-down] 'duplicate-current-line-or-region)
(global-set-key [(control x) (k)] 'kill-this-buffer)
(global-set-key (kbd "C-x o") 'switch-window)

(provide 'init-custom-keys)
