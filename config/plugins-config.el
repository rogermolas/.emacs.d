;;; package ---- "plugins-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and basic tools used for development using Emacs

;; Commentary:
;; Code:
;; Load path

;;; Code:
(add-to-list 'load-path "~/.emacs.d/plugin-setup/interface")
(add-to-list 'load-path "~/.emacs.d/plugin-setup/programming")

;; ========== ========== ========== ========== ==========
;; ******************** INTERFACE ***********************
;; ========== ========== ========== ========== ==========
;; Commentary:
;; Code:
;; Directory browser
(require 'neotree-config)

;; Interactive do things
(require 'ido-config)

;; Ibuffer buffer display
(require 'ibuffer-config)

;; Add imenu
(require 'imenu-config)
;; Add imenu-list
(require 'imenu-list-config)

;; Invoke occur from within isearch
  (defun isearch-occur ()
      "Invoke `occur' from within isearch."
      (interactive)
      (let ((case-fold-search isearch-case-fold-search))
        (occur (if isearch-regexp isearch-string (regexp-quote isearch-string)))))
(define-key isearch-mode-map (kbd "C-c o") 'isearch-occur)
(global-set-key (kbd "C-c o") 'isearch-occur)

;; Power line
(require 'powerline-config)

;; ========== ========== ========== ========== ==========
;; ******************* PROGRAMMING **********************
;; ========== ========== ========== ========== ==========
;; Commentary:
;; Code:

;; Code folding
(require 'code-folding-config)

;; Vav-flash highlight line after command
(require 'nav-flash-config)

;; Company aucomplete
(require 'company-config)

;; yasnippet
(require 'yasnippet-config)

;; Flycheck
(require 'flycheck-config)

;; iedit
(require 'iedit-config)

;; Line Numbers
(require 'linum-config)

;;; Indent Guide
(require 'indent-guide-config)

;; ========== ========== ========== ========== ==========
;; ********************* MODES *** **********************
;; ========== ========== ========== ========== ==========
;; Commentary:
;; Python
;; Use anaconda-mode package from melpa repository
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'pyvenv-mode)

(eval-after-load "company"
 '(add-to-list 'company-backends '(company-anaconda :with company-capf)))

;; ========== ========== ========== ========== ==========
;; **************** Commands/Environment ****************
;; ========== ========== ========== ========== ==========
;; Commentary:
;; Magit
(require 'magit-config)

(setenv "PATH" (concat "/usr/local/bin:/opt/local/bin:/usr/bin:/bin" (getenv "PATH")))
(require 'cl)

(provide 'plugins-config)
;;; plugins-config.el ends here
