;;; package ---- "mode-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for programming laguages and other type modes
;;; Code:


;; ================================================
;; Installed / Downloaded Modes
;; ================================================

;; C/C++
;; Use irony package from melpa repository
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; Python
;; Use anaconda-mode package from melpa repository
(add-hook 'python-mode-hook 'anaconda-mode)
(add-to-list 'load-path "~/.emacs.d/plugin-lisp/pyvenv")
(require 'pyvenv)


;; ================================================
;; Built in Modes
;; ================================================


(provide 'mode-config)
;;; mode-config.el ends here
