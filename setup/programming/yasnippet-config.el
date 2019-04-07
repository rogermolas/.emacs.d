;;; package ---- "yasnippet-config.el" Created by Roger Molas on 12/21/17.
;;; Commentary:
;;;    Customization and configuration for yasnippet.
;;; Code:

(add-to-list 'load-path "~/.emacs.d/plugin-lisp/yasnippet")
;(require 'yasnippet)
;(setq yas-snippet-dirs
 ;     '("~/.emacs.d/plugin-lisp/yasnippet/snippets/" ;; snippets
 ;       ))

(require 'yasnippet)
(yas-global-mode 1)

 (defun check-expansion ()
    (save-excursion
      (if (looking-at "\\_>") t
        (backward-char 1)
        (if (looking-at "\\.") t
          (backward-char 1)
          (if (looking-at "->") t nil)))))

  (defun do-yas-expand ()
    (let ((yas/fallback-behavior 'return-nil))
      (yas/expand)))

  (defun tab-indent-or-complete ()
    (interactive)
    (if (minibufferp)
        (minibuffer-complete)
      (if (or (not yas/minor-mode)
              (null (do-yas-expand)))
          (if (check-expansion)
              (company-complete-common)
            (indent-for-tab-command)))))

  (global-set-key [tab] 'tab-indent-or-complete)

(provide 'yasnippet-config)
;;; yasnippet-config.el ends here
