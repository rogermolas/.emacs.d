;;; package ---  "settings-config.el" --> Created by Roger Molas on 07/11/15.
;;; Commentary:
;;;   Customization of frames and buffers
;;; Code:

;; Disable autosave
(setq auto-save-default nil)

;; Disable creation of backup file
(setq make-backup-files nil)

;; Remove splash screen
(setq inhibit-splash-screen t)

;; Remove start up message
(setq inhibit-startup-message t)

;; Hide toolbar on start up
(tool-bar-mode -1)

;; Hide scrollbar
(scroll-bar-mode -1)

;; Highlights matching parenthesis
(show-paren-mode 1)

;; Set to fullscreen mode
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width  . 120))

;; Display file size indicator
(size-indication-mode 1)

;; Display battery status
(display-battery-mode 1)

;; Display time indicator
(display-time-mode 1)
(setq display-time-format "%I:%M:%S")

;; Mini buffer
(setq minibuffer-frame-alist (quote ((width . 80) (height . 4))))
(setq minibuffer-prompt-properties (quote (read-only t face minibuffer-prompt)))

;; Set cursor to box style
(setq-default cursor-type 'box)

;; Set title bar format
(setq frame-title-format "%b")

;; Font Size
;(set-face-attribute 'default nil :font "Lucida Sans Typewriter" :height 110)
(set-face-attribute 'default nil :font "Menlo" :height 115)

;; Delete Selection (text or char)
(delete-selection-mode 1)

;; change yes or no key
(defalias 'yes-or-no-p 'y-or-n-p)

;; Remove sound on scroll
(setq visible-bell t)

;; Remove the yellow alert icon
(setq lexical-binding t
      visible-bell nil
      ring-bell-function 'asc:flash-background)
(defun asc:flash-background ()
  (let ((fg (face-foreground 'default))
	(bg (face-background 'default)))
    (run-with-idle-timer
     1 nil (lambda ()
	     (set-face-background 'default bg)
	     (set-face-foreground 'default fg)))))

;; Truncate lines when exceeding window frame
(set-default 'truncate-lines t)


;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(3 ((shift) . 3))) ;; three line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling    
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

(provide 'settings-config);;; ends of settings-config.el

