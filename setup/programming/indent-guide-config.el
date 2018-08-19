;;; Commentary:
;;;    Customization and configuration for indent-guide.
;;; Code:


(add-to-list 'load-path "~/.emacs.d/plugin-lisp/indent-guide")
(require 'highlight-indent-guides)

(defun enable-mode()
  (highlight-indent-guides-mode t)
  (setq highlight-indent-guides-method 'character)
  (setq highlight-indent-guides-character ?\|)
  )

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
                      'java-mode-hook
                      'js-mode-hook
        	      'js2-mode-hook
                      'js3-mode-hook
                      'css-mode-hook
                      'c++-mode-hook
		      'c-mode-hook
		      'objc-mode-hook))
  (add-hook hook 'enable-mode))

(provide 'indent-guide-config) ;;; indent-guide.el ends here
