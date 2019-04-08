;;; package ---- "ibuffer-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for iBuffer
;;; Code:

(autoload 'ibuffer "ibuffer" "List buffers." t)
(setq ibuffer-default-sorting-mode 'major-mode)
(global-set-key (kbd "s-3") 'ibuffer)
(require 'ibuf-ext)
(add-to-list 'ibuffer-never-show-predicates "^\\*")

;; Enable hightlight when Ibuffer is active
(defun local-hl-line-mode-off ()
  (interactive)
  (make-local-variable 'global-hl-line-mode)
  (global-hl-line-mode 1))
(add-hook 'ibuffer-mode-hook 'local-hl-line-mode-off)

;; Ibuffer with IDO search
(defun ibuffer-ido-find-file (file &optional wildcards)
  "Like `ido-find-file', but default to the directory of the buffer at point."
  (interactive
   (let ((default-directory
           (let ((buf (ibuffer-current-buffer)))
             (if (buffer-live-p buf)
                 (with-current-buffer buf
                   default-directory)
               default-directory))))
     (list (ido-read-file-name "Find file: " default-directory) t)))
  (find-file file wildcards))

;; hook Find File Function
(define-key ibuffer-mode-map "\C-x\C-f" 'ibuffer-ido-find-file)

(provide 'ibuffer-config) ;;; ibuffer-config.el ends here
