# Why Emacs?

* Emacs is an extensible, customizable, powerful and FREE text editor.
* Freedom!! Unlimitted customization based on what you needs/want.
* Mail, Browser, Calendar, Games, Music etc.
* Social media interaction
* Supported systems including GNU/Linux, GNU/Hurd, Mac OS X, Microsoft Windows, FreeBSD, NetBSD, OpenBSD, and Solaris.
* A community of hackers/coders that constantly writing new extensions.

## Install the latest Emacs.
* [Mac OS](http://wikemacs.org/wiki/Installing_Emacs_on_OS_X)
* [Linux](https://www.gnu.org/software/emacs/)
* [Windows](https://www.gnu.org/software/emacs/)

## Usage

``` bash
$ git clone --recursive https://github.com/rogermolas/.emacs.d
```

## Themes

#### LIGHT
![Light Theme](https://raw.githubusercontent.com/rogermolas/emacs-config/master/theme/light.png)

#### DARK
![Light Theme](https://raw.githubusercontent.com/rogermolas/emacs-config/master/theme/dark.png)


## Plugins from Submodule
#### Interface
* [anzu](https://github.com/syohex/emacs-anzu)
* [imenu-anywhere](https://github.com/vspinu/imenu-anywhere)
* [neotree](https://github.com/jaypei/emacs-neotree)
* [powerline](https://github.com/jonathanchu/emacs-powerline)
* [indent-guide](https://github.com/DarthFennec/highlight-indent-guides)

#### Programming
* [yasnippet](https://github.com/joaotavora/yasnippet)
* [auto-complete](https://github.com/auto-complete/auto-complete)
* [iedit](https://github.com/victorhge/iedit)
* [nav-flash](https://github.com/rolandwalker/nav-flash)

#### Package from Melpa Repo
* [Flycheck](http://www.flycheck.org/en/latest) **for syntax checking**
* [Magit](https://github.com/magit/magit) **for version control system Git**

#### Modes

**C/C++**
* [**irony-mode**](https://github.com/Sarcasm/irony-mode)

**Python**
* [**anaconda-mode**](https://github.com/proofit404/anaconda-mode)
* [**pyvenv**](https://github.com/jorgenschaefer/pyvenv.git)


### Built-in config
* **Code Folding**
```lisp
    ;; Toggle
    (defun toggle-selective-display (column)
      (interactive "P")
      (set-selective-display
       (or column
           (unless selective-display
             (1+ (current-column))))))

    ;; Hide lines on command double click key
    (defun toggle-hiding (column)
      (interactive "P")
      (if hs-minor-mode
          (if (condition-case nil
		  (hs-toggle-hiding)
                (error t))
              (hs-show-all))
        (toggle-selective-display column)))

    (global-set-key [s-double-mouse-1] 'toggle-hiding)
```

* **ibuffer**
```lisp
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
```

* **ido**
```lisp
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
```

* **linum**
```lisp
    (defun md-select-linum ()
        (interactive)
        (goto-line (line-at-click))
            (set-mark (point))
            (setq *linum-mdown-line*
                (line-number-at-pos)))

    (defun mu-select-linum ()
    (interactive)
    (when *linum-mdown-line*
        (let (mu-line)
        ;; (goto-line (line-at-click))
        (setq mu-line (line-at-click))
        (goto-line (max *linum-mdown-line* mu-line))
            (set-mark (line-end-position))
            (goto-line (min *linum-mdown-line* mu-line))
            (setq *linum-mdown*
                    nil))))

    (global-set-key (kbd "<left-margin> <down-mouse-1>") 'md-select-linum)
    (global-set-key (kbd "<left-margin> <mouse-1>") 'mu-select-linum)
    (global-set-key (kbd "<left-margin> <drag-mouse-1>") 'mu-select-linum)


    ;; Set line number to fix size
    (defun linum-update-window-scale-fix (win)
    "fix linum for scaled text"
    (set-window-margins win
                (ceiling (* (if (boundp 'text-scale-mode-step)
                        (expt text-scale-mode-step
                            text-scale-mode-amount) 1)
                    (if (car (window-margins))
                        (car (window-margins)) 1)
                    ))))
```

* **Occur**
``` lisp
    (defun isearch-occur ()
      "Invoke `occur' from within isearch."
      (interactive)
      (let ((case-fold-search isearch-case-fold-search))
        (occur (if isearch-regexp isearch-string (regexp-quote isearch-string)))))
    (define-key isearch-mode-map (kbd "C-c o") 'isearch-occur)
    (global-set-key (kbd "C-c o") 'isearch-occur)
```

### Shell
```lisp
    (setenv "PATH" (concat "/usr/local/bin:/opt/local/bin:/usr/bin:/bin" (getenv "PATH")))
```


## Philosophy of the GNU Project
> Free software means that the software's users have freedom. (The issue is not about price.) 


## HAPPY HACKING!!!
