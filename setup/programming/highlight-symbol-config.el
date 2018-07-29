;;; package ---- "highlight-symbol-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for highlight-symbol.el
;;; Code:

(add-to-list 'load-path "~/.emacs.d/plugin-lisp/highlight-symbol")
(require 'highlight-symbol)

;; Enable highlight-symbol for specific mode only
(defun enable-mode()
  (highlight-symbol-mode 1))
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
  (add-hook hook 'enable-mode))

(provide 'highlight-symbol-config) ;;; highlight-symbol-config.el ends here
