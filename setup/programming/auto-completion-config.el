;;; package ---- "auto-completion-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for auto-completion.
;;; Code:

(add-to-list 'load-path "~/.emacs.d/plugin-lisp/popup")
(add-to-list 'load-path "~/.emacs.d/plugin-lisp/auto-complete")
(require 'auto-complete-config)
(ac-config-default)
(provide 'auto-completion-config) ;;; auto-completion-config.el ends here
