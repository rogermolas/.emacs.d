;;; package ---- "auto-completion-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for auto-completion.
;;; Code:

(add-to-list 'load-path "~/.emacs.d/plugin-lisp/popup")
(add-to-list 'load-path "~/.emacs.d/plugin-lisp/auto-complete")
(require 'auto-complete-config)
(ac-config-default)

(provide 'auto-completion-config)

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

;;; auto-completion-config.el ends here
