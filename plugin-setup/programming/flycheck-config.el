;;; package ---- "flycheck-config.el" Created by Roger Molas on 07/29/18.
;;; Commentary:
;;;    Customization and configuration for flycheck.
;;; Code:


(defun enable-flycheck-mode()
  (flycheck-mode t))

(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode))

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
		      'c++-mode-hook
                      'java-mode-hook
                      'js-mode-hook
        	      'js2-mode-hook
                      'js3-mode-hook
                      'css-mode-hook
		      'objc-mode-hook))
  (add-hook hook 'enable-flycheck-mode))

(provide 'flycheck-config)
;;; flycheck-config.el ends here
