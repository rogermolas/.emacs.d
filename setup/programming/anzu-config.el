;;; package ---- "anzu-config.el" Created by Roger Molas on 11/19/17.
;;; Commentary:
;;;    Customization and configuration for anzu
;;; Code:

;; https://github.com/syohex/emacs-anzu
(add-to-list 'load-path "~/.emacs.d/plugin-lisp/anzu")
(require 'anzu)
(global-anzu-mode +1)

(set-face-attribute 'anzu-mode-line nil
                    :foreground "black" :weight 'bold)

(custom-set-variables
 '(anzu-mode-lighter "")
 '(anzu-deactivate-region t)
 '(anzu-search-threshold 1000)
 '(anzu-replace-threshold 50)
 '(anzu-replace-to-string-separator " => "))

(define-key isearch-mode-map [remap isearch-query-replace]  #'anzu-isearch-query-replace)
(define-key isearch-mode-map [remap isearch-query-replace-regexp] #'anzu-isearch-query-replace-regexp)

(provide 'anzu-config) ;;; auto-anzu-config.el ends here
