;;; package ---- "ido-config.el" Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;    Customization and configuration for IDO.
;;; Code:

(setq ido-separator "\n ") ;; Make ido display choices vertically
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; M-x with IDO interface
  (global-set-key
     "\M-x"
     (lambda ()
       (interactive)
       (call-interactively
        (intern
         (ido-completing-read
          "M-x "
          (all-completions "" obarray 'commandp))))))

(provide 'ido-config)
;;; ido-config.el ends here
