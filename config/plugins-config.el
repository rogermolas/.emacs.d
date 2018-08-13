;;; package ---- "plugins-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and basic tools used for development using Emacs

;; Commentary:
;; Code:
;; Load path

;;; Code:
(add-to-list 'load-path "~/.emacs.d/setup/interface")
(add-to-list 'load-path "~/.emacs.d/setup/programming")

;; ========== ========== ========== ========== ==========
;; ************** FILE / DIRECTORY MANAGER  *************
;; ========== ========== ========== ========== ==========
(require 'neotree-config)

;; ========== ========== ========== ========== ==========
;; ******************** INTERFACE ***********************
;; ========== ========== ========== ========== ==========

;; Commentary:
;; Code:
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

;; Anzu count search and replace functio
(require 'anzu-config)

;; Code folding
(require 'code-folding-config)

;; Highlight symbol
;(require 'highlight-symbol-config)

;; Vav-flash highlight line after command
(require 'nav-flash-config)

;; Auto complete
(require 'auto-completion-config)

;; yasnippet
(require 'yasnippet-config)

;; flycheck
(require 'flycheck-config)

;; iedit
(require 'iedit-config)

;; Line Numbers
(require 'linum-config)

;;; Indent Guide
(require 'indent-guide-config)

;; REST Client
(require 'restclient-config)

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
