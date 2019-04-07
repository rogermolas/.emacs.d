;;; package ---- "nav-flash-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for popwin
;;; Code:

(add-to-list 'load-path "~/.emacs.d/plugin-lisp/nav-flash")
(require 'nav-flash)
(add-hook 'imenu-after-jump-hook 'nav-flash-show t)

(provide 'nav-flash-config)
;;; nav-flash-config.el ends here
