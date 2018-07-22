;;; package ---- "iedit-config.el" Created by Roger Molas on 01/18/18.
;;; Commentary:
;;;    Customization and configuration for iedit.
;;; Code:

(add-to-list 'load-path "~/.emacs.d/plugin-lisp/iedit")
(require 'iedit)

; Fix iedit bug in Mac
(define-key global-map (kbd "C-c ;") 'iedit-mode)

(provide 'iedit-config) ;;; iedit-config.el ends here
