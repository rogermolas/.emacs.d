;;; package ---- "linum-config.el" Created by Roger Molas on 03/11/16.
;;; Commentary:
;;;    Customization and configuration for line numbers.
;;; Code:

;;; Source : https://www.emacswiki.org/emacs/LineNumbers
;; Select line when number is selected
(defvar *linum-mdown-line* nil)
(defun line-at-click ()
  (save-excursion
	(let ((click-y (cdr (cdr (mouse-position))))
		  (line-move-visual-store line-move-visual))
	  (setq line-move-visual t)
	  (goto-char (window-start))
	  (next-line (1- click-y))
	  (setq line-move-visual line-move-visual-store)
	  ;; If you are using tabbar substitute the next line with
	  ;; (line-number-at-pos))))
	  (1+ (line-number-at-pos)))))

(defun md-select-linum ()
  (interactive)
  (goto-line (line-at-click))
  (set-mark (point))
  (setq *linum-mdown-line*
		(line-number-at-pos)))

(defun mu-select-linum ()
  (interactive)
  (when *linum-mdown-line*
	(let (mu-line)
	  ;; (goto-line (line-at-click))
	  (setq mu-line (line-at-click))
	  (goto-line (max *linum-mdown-line* mu-line))
	  (set-mark (line-end-position))
	  (goto-line (min *linum-mdown-line* mu-line))
	  (setq *linum-mdown*
			nil))))

(global-set-key (kbd "<left-margin> <down-mouse-1>") 'md-select-linum)
(global-set-key (kbd "<left-margin> <mouse-1>") 'mu-select-linum)
(global-set-key (kbd "<left-margin> <drag-mouse-1>") 'mu-select-linum)


;; Set line number to fix size
(defun linum-update-window-scale-fix (win)
  "fix linum for scaled text"
  (set-window-margins win
		      (ceiling (* (if (boundp 'text-scale-mode-step)
				      (expt text-scale-mode-step
					    text-scale-mode-amount) 1)
				  (if (car (window-margins))
				      (car (window-margins)) 1)
				  ))))

;; Enable linum for specific mode only
(defun enable-linum-mode()
  (linum-mode t))
(dolist (hook (list 'emacs-lisp-mode-hook
                      'lisp-mode-hook
                      'ruby-mode-hook
                      'perl-mode-hook
                      'php-mode-hook
                      'html-mode-hook
                      'web-mode-hook
                      'sgml-mode-hook
                      'multi-web-mode-hook
                      'python-mode-hook
                      'lua-mode-hook
                      'c-mode-hook
                      'java-mode-hook
                      'js-mode-hook
        	      'js2-mode-hook
                      'js3-mode-hook
                      'css-mode-hook
                      'c++-mode-hook
		      'objc-mode-hook))
  (add-hook hook 'enable-linum-mode))


;; Add line number with format to buffer
(setq linum-format "%3d\u2502")

(provide 'linum-config) ;;; linum-config.el ends here 
