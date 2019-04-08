;;; package ---- "code-folding-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for code foding (hideshowvis plug-in)
;;; Code:

(add-to-list 'hs-special-modes-alist
         '(ruby-mode
         "\\(def\\|do\\|{\\)" "\\(end\\|end\\|}\\)" "#"
         (lambda (arg) (ruby-end-of-block)) nil))

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
  (add-hook hook 'hs-minor-mode))

;; Toggle
(defun toggle-selective-display (column)
  (interactive "P")
  (set-selective-display
   (or column
       (unless selective-display
	 (1+ (current-column))))))

;; Hide lines on command double click key
(defun toggle-hiding (column)
      (interactive "P")
      (if hs-minor-mode
          (if (condition-case nil
		  (hs-toggle-hiding)
                (error t))
              (hs-show-all))
        (toggle-selective-display column)))

(global-set-key [s-double-mouse-1] 'toggle-hiding)
(provide 'code-folding-config)
;;; code-folding-config.el ends here
