;;; package ---- "markdown-config.el" Created by Roger Molas on 11/19/17.
;;; Commentary:
;;;   Markdown Mode customization for development using Emacs
;;;   https://github.com/jrblevin/markdown-mode

(add-to-list 'load-path "~/.emacs.d/plugin-lisp-modes/markdown")
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

(provide 'markdown-config)
