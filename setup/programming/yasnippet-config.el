;;; package ---- "yasnippet-config.el" Created by Roger Molas on 12/21/17.
;;; Commentary:
;;;    Customization and configuration for yasnippet.
;;; Code:

(add-to-list 'load-path "~/.emacs.d/plugin-lisp/yasnippet")
(require 'yasnippet)
(add-to-list 'yas-snippet-dirs "~/.emacs.d/plugin-lisp/snippets/snippets")
(yas-global-mode 1)

; let's define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init ()
  ;(require 'auto-complete-c-headers)
  ;(add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/local/include")
  (add-to-list 'achead:include-directories '"/Applications/Developer Tools/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1")
  (add-to-list 'achead:include-directories '"/Applications/Developer Tools/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/9.0.0/include")
  (add-to-list 'achead:include-directories '"/Applications/Developer Tools/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include")
  (add-to-list 'achead:include-directories '"/Applications/Developer Tools/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.13.sdk/usr/include")
  (add-to-list 'achead:include-directories '"/Applications/Developer Tools/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.13.sdk/System/Library/Frameworks")
 )
; now let's call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

(provide 'yasnippet-config) ;;; yasnippet-config.el ends here
