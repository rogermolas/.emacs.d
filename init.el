;;; Package ---- "init.el" Created by Roger Molas on 07/11/15.
;;; Code:
;;; Commentary:
;;;   Customization and basic tools used for development using Emacs
;;;

;; Commentary
;; ========== ========== ========== ========== ========== ==========
;; ************************ Configuration **************************
;; ========== ========== ========== ========== ========== ==========
;; Code:
(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/theme")
(require 'settings-config)
(require 'plugins-config)
(require 'theme-light)

;; Commentary
;; ========== ========== ========== ========== ========== ==========
;; ****************** LOAD PACKAGES REPOSITORY *********************
;; ========== ========== ========== ========== ========== ==========
;; Code:
(require 'package)
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(flycheck-pos-tip
    flycheck-pycheckers
    yasnippet
    yasnippet-snippets
    company
    anaconda-mode
    company-anaconda
    pyvenv
    markdown-mode
    org-bullets
    flycheck
    magit
    company-quickhelp))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

(provide 'init)
;;; init.el ends here
