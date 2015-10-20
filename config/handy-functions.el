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

(provide 'handy-functions)
