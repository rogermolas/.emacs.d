;;; package ---- "mode-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for programming laguages and other type modes
;;; Code


(add-to-list 'load-path "~/.emacs.d/setup/modes/")

;; Mark Down
(require 'markdown-config)

;; C/C++
(require 'c-c++-config)

(provide 'mode-config) ;;; mode-config.el ends here
