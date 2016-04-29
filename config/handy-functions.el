(defun join-line-from-below ()
  "Join line from below."
  (interactive)
  (forward-line 1)
  (delete-indentation))

;; Originally swiped from rejeep's emacs.d rejeep-defuns.el.
(defun duplicate-current-line-or-region (arg)
  "Duplicates the current line or region ARG times."
  (interactive "p")
  (let (beg end (origin (point)))
    (if (and (region-active-p) (> (point) (mark)))
	(exchange-point-and-mark))
    (setq beg (line-beginning-position))
    (if (region-active-p)
	(exchange-point-and-mark))
    (setq end (line-end-position))
    (let ((region (buffer-substring-no-properties beg end)))
      (dotimes (i arg)
	(goto-char end)
	(newline)
	(insert region)
	(setq end (point)))
      (goto-char (+ origin (* (length region) arg) arg)))))

(defun my-minibuffer-insert-word-at-point ()
  "Get word at point in original buffer and insert it to minibuffer."
  (interactive)
  (let (word beg)
    (with-current-buffer (window-buffer (minibuffer-selected-window))
      (save-excursion
	(skip-syntax-backward "w_")
	(setq beg (point))
	(skip-syntax-forward "w_")
	(setq word (buffer-substring-no-properties beg (point)))))
    (when word
      (insert word))))

(defun my-minibuffer-setup-hook ()
  (local-set-key (kbd "C-w") 'my-minibuffer-insert-word-at-point))

(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)

(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'handy-functions)
