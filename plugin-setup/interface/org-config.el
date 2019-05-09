;;; package ---- "org-config.el" Created by Roger Molas on 05/09/19.
;;; Commentary:
;;;    Customization and configuration for org mode
;;; Code:

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda ()
			   (org-bullets-mode 1)))

(provide 'org-config)
;;; org-config.el ends here


