;;; package ---- "mode-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for programming laguages modes
;;; Code

;; Commentary
;; ========== ========== ========== ========== ========== ==========
;;  ************************ Load path *****************************
;; ========== ========== ========== ========== ========== ==========
(add-to-list 'load-path "~/.emacs.d/setup/config/mode-config/")

;; Commentary
;; ========== ========== ========== ========== ========== ==========
;; ************** Objective C Programming Language *****************
;; ========== ========== ========== ========== ========== ==========
(require 'objC-config)

;; Commentary
;; ========== ========== ========== ========== ========== ==========
;; ***************** Swift Programming Language ********************
;; ========== ========== ========== ========== ========== ==========
(require 'swift-config)

;; Commentary
;; ========== ========== ========== ========== ========== ==========
;; ***************** Python Programming Language *******************
;; ========== ========== ========== ========== ========== ==========
(require 'python-config)

(provide 'mode-config) ;;; mode-config.el ends here
