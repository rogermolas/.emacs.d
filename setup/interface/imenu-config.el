;;; package ---- "imenu-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for imenu
;;; Code:

(add-to-list 'load-path "~/.emacs.d/plugin-lisp/imenu-anywhere")
(require 'imenu-anywhere)

(global-set-key (kbd "s-2") 'imenu-anywhere)
(setq semantic-imenu-sort-bucket-function (quote semantic-sort-tags-by-name-increasing))
(setq semantic-imenu-summary-function (quote semantic-format-tag-name))
(setq semantic-which-function-use-color t)

(provide 'imenu-config)
;;; imenu-config.el ends here
