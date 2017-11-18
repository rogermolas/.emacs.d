;;; theme-dark.el --- A gray color scheme theme for Emacs 24.

;; Copyright (C) 2015 Roger Molas
;; Author: Roger Molas  <mail.rogermolas@gmail.com>
;;
;; This is based on the builtin wombat theme.
;; Works with Emacs 24.

(deftheme theme-dark
  "boracay dark faces")

(let ((class '((class color)(min-colors 10)))
      (background "#0A0A0A") (foreground "#B2B2B2")
      (selection "#264F78")

      (text   "#7F7F7F") (text-2 "#999999")
      (text-3 "#CCCCCC") (text-4 "#777777")
      (text-5 "#785C4B") (text-6 "#6F6F58")
      (text-7 "#F2EE9A")

      (black  "#000000") (white   "#FFFFFF")
      (green  "#00FF00") (dgreen  "#00b200")
      (yellow "#FFFF00") (dyellow "#b2b200")
      (red    "#FF0000") (dred    "#b20000")
      (gray   "#808080") (sgray   "#BFBFBF")
      (dgray  "#242424"))

  ;; Set faces
  (custom-theme-set-faces
   'theme-dark

   `(default ((,class (:background,background :foreground,foreground))))
   `(linum   ((,class (:background,dgray :foreground,text-4))))
   `(isearch ((,class (:background,white :foreground,black))))
   `(match   ((,class (:background,sgray :foreground,black))))
   
   `(region  ((,class (:background,selection))))
   `(cursor  ((,class (:background,white))))
   `(fringe  ((,class (:background,dgray))))
   
   ;; Highlight
   `(highlight      ((,class (:background,selection))))
   (set-face-attribute 'lazy-highlight nil :background sgray :foreground black)
   
   ;; Font facesx
   `(font-lock-string-face            ((,class (:foreground,text-3 :weight bold :slant italic)))); Strings
   `(font-lock-comment-face           ((,class (:foreground,text-4 :slant italic)))); Comments
   `(font-lock-comment-delimiter-face ((,class (:inherit font-lock-comment-face))))
   `(font-lock-constant-face          ((,class (:foreground,text-6 :weight bold)))); Constants
   `(font-lock-variable-name-face     ((,class (:foreground,text-7)))) ; Variables
   `(font-lock-preprocessor-face      ((,class (:foreground,text-5 :weight bold)))); Pre processor macro
   `(font-lock-keyword-face           ((,class (:foreground,text-3 :weight bold)))); Language keyword
   `(font-lock-type-face              ((,class (:foreground,text-2 :weight bold)))); Data types
   `(font-lock-function-name-face     ((,class (:foreground,foreground)))); Functions
   `(font-lock-builtin-face           ((,class (:foreground,text)))); Built in functions
   `(font-lock-negation-char-face     ((,class (:foreground,foreground)))); Characters like (e.g !)
   `(font-lock-doc-face               ((,class (:foreground,foreground)))); Other Strings

   ;;==================================Built-ins======================================
   ;; Show parent matching
   `(show-paren-match-face ((,class (:background,yellow :foreground:,black))))
   `(show-paren-mismatch   ((,class (:background,red :foreground:,black))))

   ;; Mini buffer
   `(minibuffer-prompt ((,class (:background,background :foreground,white :weight bold))))

   `(error   ((,class (:foreground,red :weight bold))))
   `(success ((,class (:foreground,green :weight bold))))
   `(warning ((,class (:foreground,yellow :weight bold))))

   ;; Mode line
   `(mode-line          ((,class (:background,sgray :foreground,black))))
   `(mode-line-inactive ((,class (:background,dgray :foreground,white))))
   `(mode-line-highlight((,class (:background,selection :foreground,white :box(:line-width 3 :color,sgray)))))
   
   ;; IDO
   `(ido-first-match((,class (:foreground,green :underline,green))))
   `(ido-only-match ((,class (:foreground,yellow :underline,yellow))))
   `(ido-subdir     ((,class (:foreground,white :weight bold))))

   ;; White Space
   `(whitespace-space    ((,class (:background,background :foreground,dgreen))))
   `(whitespace-line     ((,class (:background,gray :foreground,white))))
   `(whitespace-empty    ((,class (:background,dred :foreground,black))))
   `(whitespace-trailing ((,class (:background,dred :foreground,black))))
   `(whitespace-tab      ((,class (:background,dgreen :foreground,black))))
   `(whitespace-indentation ((,class (:background,dyellow :foreground,black))))
   `(whitespace-space-after-tab ((,class (:background,dyellow :foreground,black))))

   ;; EShell
   `(eshell-prompt       ((,class (:background,background :foreground,white :weight bold))))
   `(eshell-ls-directory ((,class (:background,background :foreground,foreground))))
   `(eshell-ls-archive   ((,class (:background,dgreen :foreground,black))))
   `(eshell-ls-product   ((,class (:background,dyellow :foreground,black))))
   `(eshell-ls-special   ((,class (:background,yellow :foreground,red))))
   `(eshell-ls-unreadable((,class (:background,gray :foreground,black))))
   `(eshell-ls-executable((,class (:foreground,dgreen))))
   `(eshell-ls-symlink   ((,class (:foreground,green))))
   `(eshell-ls-readonly  ((,class (:foreground,dyellow))))
   `(eshell-ls-backup    ((,class (:foreground,gray :weight bold))))
   `(eshell-ls-missing   ((,class (:foreground,red :weight bold))))
   `(eshell-ls-clutter   ((,class (:foreground,yellow))))

   ;; ================================== Plug-ins ======================================
   ;; NeoTree
   `(neo-banner-face     ((,class (:foreground,white :weight bold))))
   `(neo-root-dir-face   ((,class (:foreground,dgreen :weight bold))))
   `(neo-header-face     ((,class (:foreground,dgreen :height 115))))
   `(neo-dir-link-face   ((,class (:inherit default :height 115))))
   `(neo-file-link-face  ((,class (:foreground,dyellow :height 115))))
   `(neo-expand-btn-face ((,class (:foreground,text-2 :height 115 :weight bold))))

   ;; Highlight symbol
   `(highlight-symbol-face ((,class (:background,white :foreground,black))))
))

;; Autoload for MELPA
;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'theme-dark)
;;; boracay-dark.el ends here
