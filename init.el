;;; Package ---- "init.el" Created by Roger Molas on 07/11/15.
;;; Code:
;;; Commentary:
;;;   Customization and basic tools used for development using Emacs
;;;


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Commentary
;; ========== ========== ========== ========== ========== ==========
;; ************************ Configuration **************************
;; ========== ========== ========== ========== ========== ==========
;; Code:
(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/theme/")
(require 'settings-config)
(require 'plugins-config)
(require 'mode-config)
;;(load-theme )
;(require 'github-modern)

;; Commentary
;; ========== ========== ========== ========== ========== ==========
;; ****************** LOAD PACKAGES REPOSITORY *********************
;; ========== ========== ========== ========== ========== ==========
;; Code:
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-replace-threshold 50)
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(comint-scroll-to-bottom-on-input t)
 '(fringe-mode (quote (4 . 0)) nil (fringe))
 '(indicate-buffer-boundaries
   (quote
    ((t . left)
     (top . left)
     (bottom . left)
     (up . left)
     (down . left))))
 '(package-selected-packages
   (quote
    (greymatters-theme github-theme grandshell-theme github-modern-theme magit))))

(provide 'init) ;;; init.el ends here

