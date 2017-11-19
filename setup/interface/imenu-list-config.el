;;; package ---- "imenu-list-config.el" Created by Roger Molas on 11/19/17.
;;; Commentary:
;;;    Customization and configuration for imenu-list
;;; Code:

(add-to-list 'load-path "~/.emacs.d/plugin-lisp/imenu-list")
(require 'imenu-list)

(add-hook 'markdown-mode-hook 'imenu-add-menubar-index)
(setq imenu-auto-rescan t)

(setq imenu-list-size     200)
(setq imenu-list-position 'right)
(global-set-key (kbd "C-'") #'imenu-list-smart-toggle)

(provide 'imenu-list-config) ;;; imenu-list-config.el ends here
