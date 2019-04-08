;;; package ---- "company-config.el" Created by Roger Molas on 04/08/2019.
;;; Commentary:
;;;    Customization and configuration for company auto completion.
;;; Code:

(add-hook 'after-init-hook 'global-company-mode)
(setq global-company-mode t)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0)

(setq company-quickhelp-mode 1)
(setq company-quickhelp-delay 0)


(provide 'company-config)
;;; company-config.el ends here
