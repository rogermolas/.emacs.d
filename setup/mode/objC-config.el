;;; package ---- "objC-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Objective-C Mode customization for development using Emacs

;; --- Obj-C switch between header and source ---
(defun objc-in-header-file ()
  (let* ((filename (buffer-file-name))
         (extension (car (last (split-string filename "\\.")))))
    (string= "h" extension)))

(defun objc-jump-to-extension (extension)
  (let* ((filename (buffer-file-name))
         (file-components (append
			   (butlast (split-string filename
						  "\\."))
			   (list extension))))
    (find-file (mapconcat 'identity file-components "."))))

;;; Assumes that Header and Source file are in same directory
(defun objc-jump-between-header-source ()
  (interactive)
  (if (objc-in-header-file)
      (objc-jump-to-extension "m")
    (objc-jump-to-extension "h")))

(defun objc-mode-customizations ()
  (define-key objc-mode-map (kbd "C-c t") 'objc-jump-between-header-source))

(add-hook 'objc-mode-hook 'objc-mode-customizations)


;;; Add Keywords
(font-lock-add-keywords 'objc-mode
  '(("id","NSData, instancetype" . font-lock-keyword-face)))


(provide 'objC-config) ;;; objC-config.el ends here
