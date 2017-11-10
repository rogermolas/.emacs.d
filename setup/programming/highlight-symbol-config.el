;;; package ---- "highlight-symbol-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for highlight-symbol.el
;;; Code:

(add-to-list 'load-path "~/.emacs.d/setup/plugins-lisp/highlight-symbols")
(require 'highlight-symbol)
(global-set-key [s-mouse-1] 'highlight-symbol-mode)
(global-set-key [s-mouse-2] 'highlight-symbol-query-replace)

(provide 'highlight-symbol-config) ;;; highlight-symbol-config.el ends here
