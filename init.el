;;; Package ---- "init.el" Created by Roger Molas on 07/11/15.
;;; Code:
;;; Commentary:
;;;   Customization and basic tools used for development using Emacs
;;;


;; Commentary
;; ========== ========== ========== ========== ========== ==========
;; ****************** LOAD PACKAGES REPOSITORY *********************
;; ========== ========== ========== ========== ========== ==========
;; Code:
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(;; Code snippets
    yasnippet
    yasnippet-snippets
    ;; syntax checker
    flycheck
    flycheck-pos-tip
    flycheck-pycheckers
    flycheck-irony
    ;;company
    company-quickhelp
    ;; anaconda-mode

    company-anaconda ;; python mode
    company-irony    ;; C/C++ mode
    pyvenv
    markdown-mode
    org-bullets
    magit
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)


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


(provide 'init)
;;; init.el ends here
