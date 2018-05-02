;;; package ---- "irony-config.el" Created by Roger Molas on 01/18/18.
;;; Commentary:
;;;    Customization and configuration for irony-mode
;;; Code:

(add-to-list 'load-path "~/.emacs.d/elpa/irony-20180104.1109")
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(provide 'irony-config)
