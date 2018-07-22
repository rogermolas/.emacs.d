;;; package ---- "c-c++-config.el" Created by Roger Molas on 1/18/18.
;;; Commentary:
;;;   C/C++ Mode customization for development using Emacs

(add-to-list 'auto-mode-alist '("\\.c\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.ccp\\'" . c++-mode))

(provide 'c-c++-config)
