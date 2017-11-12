;;; package ---- "neotree-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for imenu
;;; Code:

(add-to-list 'load-path "~/.emacs.d/plugin-lisp/neotree")
(require 'neotree)
(global-set-key (kbd "s-1") 'neotree-toggle)
(setq neo-theme (quote ascii))

(provide 'neotree-config) ;;; neotree-config.el ends here
