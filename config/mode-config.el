;;; package ---- "mode-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for programming laguages and other type modes
;;; Code:


;; ================================================
;; Installed / Downloaded Modes
;; ================================================

;; Python
;; Use anaconda-mode package from melpa repository
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

(add-to-list 'load-path "~/.emacs.d/plugin-lisp/pyvenv")
(require 'pyvenv)


(provide 'mode-config)
;;; mode-config.el ends here
