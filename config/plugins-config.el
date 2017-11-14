;;; package ---- "plugins-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and basic tools used for development using Emacs

;; Commentary:
;; Code:
;; Load path
(add-to-list 'load-path "~/.emacs.d/setup/interface")
(add-to-list 'load-path "~/.emacs.d/setup/navigation")
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

;; Invoke occur from within isearch
  (defun isearch-occur ()
      "Invoke `occur' from within isearch."
      (interactive)
      (let ((case-fold-search isearch-case-fold-search))
        (occur (if isearch-regexp isearch-string (regexp-quote isearch-string)))))
(define-key isearch-mode-map (kbd "C-c o") 'isearch-occur)
(global-set-key (kbd "C-c o") 'isearch-occur)

;; ========== ========== ========== ========== ==========
;; ******************* PROGRAMMING **********************
;; ========== ========== ========== ========== ==========

;; Commentary:
;; Code:
;; Line Numbers
(require 'linum-config)

;; Code folding
(require 'code-folding-config)

;; Highlight symbol
(require 'highlight-symbol-config)

;; Vav-flash highlight line after command
(require 'nav-flash-config)

;; Auto complete
(require 'auto-completion-config)

;; ========== ========== ========== ========== ==========
;; **************** Commands/Environment ****************
;; ========== ========== ========== ========== ==========

;; Magit
(require 'magit-config)

(setenv "PATH" (concat "/usr/local/bin:/opt/local/bin:/usr/bin:/bin" (getenv "PATH")))
(require 'cl)

(provide 'plugins-config) ;;; plugins-config.el ends here
