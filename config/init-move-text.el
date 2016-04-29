(require 'move-text)
(message "loaded move-text")

(global-set-key (kbd "<M-up>") 'move-text-up)
(global-set-key (kbd "<M-down>") 'move-text-down)


(provide 'init-move-text)
