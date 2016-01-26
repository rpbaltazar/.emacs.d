(require 'projectile)
(message "Require projectile")

(projectile-global-mode)
(setq projectile-completion-system 'ido)

(add-to-list 'projectile-globally-ignored-directories "elpa")
(add-to-list 'projectile-globally-ignored-directories ".cache")
(add-to-list 'projectile-globally-ignored-directories "node_modules")


(provide 'init-projectile)
