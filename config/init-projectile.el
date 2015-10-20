(setq projectile-completion-system 'helm)
(helm-projectile-on)

(require 'projectile)

(add-to-list 'projectile-globally-ignored-directories "elpa")
(add-to-list 'projectile-globally-ignored-directories ".cache")
(add-to-list 'projectile-globally-ignored-directories "node_modules")

(projectile-global-mode)

(provide 'init-projectile)
