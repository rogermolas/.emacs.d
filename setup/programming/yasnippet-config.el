;;; package ---- "yasnippet-config.el" Created by Roger Molas on 12/21/17.
;;; Commentary:
;;;    Customization and configuration for yasnippet.
;;; Code:

(add-to-list 'load-path "~/.emacs.d/plugin-lisp/yasnippet")
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/plugin-lisp/yasnippet/snippets/" ;; snippets
        ))
(yas-global-mode 1)

(provide 'yasnippet-config) ;;; yasnippet-config.el ends here
