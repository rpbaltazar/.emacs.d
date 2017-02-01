;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(let ((debug-on-error t)
      (gc-cons-threshold (* 1024 1024 1024))
      (file-name-handler-alist nil)
      (config-directory (concat user-emacs-directory "config/")))

  (defcustom dotemacs-cache-directory (concat user-emacs-directory ".cache/")
    "The storage location for various persistent files."
    :group 'dotemacs)

  (package-initialize)

  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)

  (require 'cl)
  (cl-loop for file in (directory-files config-directory t)
	   unless (file-directory-p file)
	   do (require (intern (file-name-base file)) file)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(typescript-indent-level 2)
 '(typescript-tab-width 2)
 '(indent-tabs-mode nil)
 '(confirm-kill-emacs (quote y-or-n-p))
 '(css-indent-offset 2)
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" "bcc6775934c9adf5f3bd1f428326ce0dcd34d743a92df48c128e6438b815b44f" default)))
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(package-selected-packages
   (quote
    (markdown-mode flymd typescript-mode flycheck elixir-mode switch-window gotham-theme flymake-go go-complete go-errcheck go-mode go-projectile golint magit sr-speedbar ido-vertical-mode ag rainbow-mode move-text whitespace-cleanup-mode flx-ido projectile-rails smart-tab swiper helm-projectile projectile flymake-coffee flymake-ruby flymake-yaml haml-mode hc-zenburn-theme coffee-mode)))
 '(typescript-indent-level 2))

(set-face-attribute 'default nil
		    :font "Fira Code"
		    :height 150
		    )
(set-frame-font "Fira Code" nil t)
(load-theme 'spacegray)

(tool-bar-mode -1)
(global-linum-mode t)
(add-hook 'before-save-hook 'whitespace-cleanup)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
