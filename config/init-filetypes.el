;; setup files ending in “.hamlc” to open in haml
(add-to-list 'auto-mode-alist '("\\.hamlc\\'" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'". rainbow-mode ))

(provide 'init-filetypes)
