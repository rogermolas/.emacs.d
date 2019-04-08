;;; package ---- "yasnippet-config.el" Created by Roger Molas on 12/21/17.
;;; Commentary:
;;;    Customization and configuration for yasnippet.
;;; Code:

;(yas-global-mode 1)
(setq yas-reload-all 1)
(add-hook 'prog-mode-hook #'yas-minor-mode)

(defun check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
	(backward-char 1)
	(if (looking-at "->") t nil)))))

(defun do-yas-expand ()
  (let ((yas/fallback-behavior 'return-nil))
    (yas/expand)))

(defun tab-indent-or-complete ()
  (interactive)
  (if (minibufferp)
      (minibuffer-complete)
    (if (or (not yas/minor-mode)
	    (null (do-yas-expand)))
	(if (check-expansion)
	    (company-complete-common)
	  (indent-for-tab-command)))))

(global-set-key (kbd "C-c e") 'tab-indent-or-complete)

(provide 'yasnippet-config)
;;; yasnippet-config.el ends here
