;;; package ---- "mode-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for programming laguages and other type modes
;;; Code


;; ================================================
;; Installed / Downloaded Modes
;; ================================================

;;Markdown Mode customization for development using Emacs
;;https://github.com/jrblevin/markdown-mode
(add-to-list 'load-path "~/.emacs.d/plugin-lisp-modes/markdown")
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;; C/C++
;; Use irony package from melpa repository
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; Python
;; Use anaconda-mode package from melpa repository
;; Standard Jedi.el setting
(add-hook 'python-mode-hook 'anaconda-mode)



;; ================================================
;; Built in Modes
;; ================================================


(provide 'mode-config) ;;; mode-config.el ends here
