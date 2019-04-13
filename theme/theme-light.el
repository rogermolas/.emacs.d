;;; theme-light.el --- A light color scheme theme for Emacs 24.
;;; Commentary:
;; Copyright (C) 2018 Roger Molas
;; Author: Roger Molas  <mail.rogermolas@gmail.com>
;;
;; This is based on the builtin wombat theme.
;; Works with Emacs 25.

(deftheme theme-light
  "light faces")
;;; Code:

(let ((class '((class color)(min-colors 10)))
      (background "#FFFFFF") (foreground "#000000")
      (selection "#A4CDFF")

      (keyword "#0000FF") (string "#A31515")
      (builtin "#2E0D6E") (macro "#643820")
      (type "#26474B") (comment "#45BB3E")
      (constants "#26474B") (variables "#b18741")

      (black  "#000000") (white   "#FFFFFF")
      (green  "#00FF00") (dgreen  "#00b200")
      (yellow "#FFFF00") (dyellow "#b2b200")
      (red    "#FF0000") (dred    "#b20000")
      (gray   "#808080") (sgray   "#BFBFBF")
      (dgray  "#242424"))

  ;; Set faces
  (custom-theme-set-faces
   'theme-light

   `(default ((,class (:background,background :foreground,foreground))))
   `(linum   ((,class (:foreground,sgray))))
   `(isearch ((,class (:background,white :foreground,black))))
   `(match   ((,class (:background,sgray :foregro2und,black))))

   `(region  ((,class (:background,selection))))
   `(cursor  ((,class (:background,black))))
   `(fringe  ((,class (:background,background))))

   ;; Highlight
   `(highlight      ((,class (:background,selection))))
    (set-face-attribute 'lazy-highlight nil :background sgray :foreground black)

    ;; Font faces
    `(font-lock-string-face            ((,class (:foreground,string :slant italic)))); Strings
    `(font-lock-comment-face           ((,class (:foreground,comment :slant italic)))); Comments
    `(font-lock-comment-delimiter-face ((,class (:inherit font-lock-comment-face))))
    `(font-lock-constant-face          ((,class (:foreground,constants)))); Constants
    `(font-lock-variable-name-face     ((,class (:foreground,variables)))) ; Variables
    `(font-lock-preprocessor-face      ((,class (:foreground,macro :weight bold)))); Pre processor macro
    `(font-lock-keyword-face           ((,class (:foreground,keyword)))); Language keyword
    `(font-lock-type-face              ((,class (:foreground,type)))); Data types
    `(font-lock-function-name-face     ((,class (:foreground,foreground)))); Functions
    `(font-lock-builtin-face           ((,class (:foreground,builtin)))); Built in functions
    `(font-lock-negation-char-face     ((,class (:foreground,foreground)))); Characters like (e.g !)
    `(font-lock-doc-face               ((,class (:foreground,foreground)))); Other Strings

    ;;==================================Built-ins======================================
    ;; Show parent matching
   `(show-paren-match ((,class (:background,yellow))))
   `(show-paren-mismatch   ((,class (:background,red :foreground:,yellow))))
   
   ;; Mini buffer
   `(minibuffer-prompt ((,class (:background,background :foreground,black :weight bold))))

   `(error   ((,class (:foreground,red :weight bold))))
   `(success ((,class (:foreground,green :weight bold))))
   `(warning ((,class (:foreground,yellow :weight bold))))

   ;; Mode line
   `(mode-line          ((,class (:background,dgray :foreground,white))))
   `(mode-line-inactive ((,class (:background,gray :foreground,black))))
   `(mode-line-highlight((,class (:background,selection :foreground,white))))

   ;; IDO
   `(ido-first-match((,class (:foreground,dgreen :underline,green))))
   `(ido-only-match ((,class (:foreground,dyellow :underline,yellow))))
   `(ido-subdir     ((,class (:foreground,foreground :weight bold))))

   ;; White Space
   `(whitespace-space    ((,class (:background,background :foreground,dgreen))))
   `(whitespace-line     ((,class (:background,gray :foreground,white))))
   `(whitespace-empty    ((,class (:background,dred :foreground,black))))
   `(whitespace-trailing ((,class (:background,dred :foreground,black))))
   `(whitespace-tab      ((,class (:background,dgreen :foreground,black))))
   `(whitespace-indentation ((,class (:background,dyellow :foreground,black))))
   `(whitespace-space-after-tab ((,class (:background,dyellow :foreground,black))))

   ;; EShell
   `(eshell-prompt       ((,class (:background,background :foreground,foreground :weight bold))))
   `(eshell-ls-directory ((,class (:background,background :foreground,foreground))))
   `(eshell-ls-archive   ((,class (:background,dgreen :foreground,black))))
   `(eshell-ls-product   ((,class (:background,dyellow :foreground,black))))
   `(eshell-ls-special   ((,class (:background,dyellow :foreground,red))))
   `(eshell-ls-unreadable((,class (:background,dgray :foreground,black))))
   `(eshell-ls-executable((,class (:foreground,dgreen))))
   `(eshell-ls-symlink   ((,class (:foreground,dgreen))))
   `(eshell-ls-readonly  ((,class (:foreground,dyellow))))
   `(eshell-ls-backup    ((,class (:foreground,dgray :weight bold))))
   `(eshell-ls-missing   ((,class (:foreground,dred :weight bold))))
   `(eshell-ls-clutter   ((,class (:foreground,dyellow))))

   ;; ================================== Plug-ins ======================================
   ;; NeoTree
   `(neo-banner-face     ((,class (:foreground,foreground :weight bold))))
   `(neo-root-dir-face   ((,class (:foreground,dgreen :weight bold))))
   `(neo-header-face     ((,class (:foreground,dgreen :height 115))))
   `(neo-dir-link-face   ((,class (:inherit default :height 115 :weight bold))))
   `(neo-file-link-face  ((,class (:foreground,foreground :height 115))))
   `(neo-expand-btn-face ((,class (:inherit default :height 115 :weight bold))))

   ;; Highlight symbol
   `(highlight-symbol-face ((,class (:background,nil :box t))))
))

(provide 'theme-light)
;;; theme-light.el ends here
