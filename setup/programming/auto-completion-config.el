;;; package ---- "auto-completion-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for auto-completion.
;;; Code:

(add-to-list 'load-path "~/.emacs.d/setup/plugins-lisp/popup")
(add-to-list 'load-path "~/.emacs.d/setup/plugins-lisp/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(setq ac-use-menu-map t)

;; auto-complete hook
(setq-default ac-sources
	      '(ac-source-yasnippet ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
(add-hook 'css-mode-hook 'ac-css-mode-setup)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(global-auto-complete-mode t)
(add-to-list 'ac-modes 'objc-mode)

(provide 'auto-completion-config) ;;; auto-completion-config.el ends here

