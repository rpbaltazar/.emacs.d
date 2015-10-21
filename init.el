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

(tool-bar-mode -1)
(global-linum-mode t)
(add-hook 'before-save-hook 'whitespace-cleanup)

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
 '(css-indent-offset 2)
 '(custom-safe-themes
   (quote
    ("bcc6775934c9adf5f3bd1f428326ce0dcd34d743a92df48c128e6438b815b44f" default)))
 '(package-selected-packages
   (quote
    (move-text whitespace-cleanup-mode flx-ido projectile-rails smart-tab swiper helm-projectile projectile flymake-coffee flymake-ruby flymake-yaml haml-mode hc-zenburn-theme coffee-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'hc-zenburn)
(put 'dired-find-alternate-file 'disabled nil)
(setq confirm-kill-emacs 'y-or-n-p)