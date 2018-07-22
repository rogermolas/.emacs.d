;;; package ---- "mode-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for programming laguages and other type modes
;;; Code


(add-to-list 'load-path "~/.emacs.d/setup/modes/")

;; Mark Down
(require 'markdown-config)

;; C/C++
;(require 'c-c++-config)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(provide 'mode-config) ;;; mode-config.el ends here
