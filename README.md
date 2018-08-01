
# Emacs Configuration
Emacs is an extensible, customizable, powerful and free text editor. Emacs is one of [**GNU Project**](https://en.wikipedia.org/wiki/GNU_Project#Origins) a free-software, mass-collaboration project, started by the father of Open source [Richard Stallman](https://en.wikipedia.org/wiki/Richard_Stallman) at MIT in 1983.

### Philosophy of the GNU Project
> Free software means that the software's users have freedom. (The issue is not about price.) 


## Configuration

### Plugins
#### Interface
* [anzu](https://github.com/syohex/emacs-anzu/tree/e6c56ca8b23ac433f7be58b6f3f50801dd4164e4)
* [imenu-anywhere](https://github.com/vspinu/imenu-anywhere/tree/fc7f0fd2f19e5ebee70156a99bf87393123893e3)
* [neotree](https://github.com/jaypei/emacs-neotree/tree/bc98dfb44c106375efa4f26848f3790ee264da97)
* [powerline](https://github.com/jonathanchu/emacs-powerline/tree/bbbbcd70641249f9dc9d3ea37997d6c60efdaf9b)

#### Programming
* [auto-complete](https://github.com/auto-complete/auto-complete/tree/2e83566ddfa758c69afe50b8a1c62a66f47471e3)
* [highlight-symbol](https://github.com/nschum/highlight-symbol.el/tree/7a789c779648c55b16e43278e51be5898c121b3a)
* [iedit](https://github.com/victorhge/iedit/tree/5b14cc9fcaef509c50f25cff872fba5d70b2c799)
* [nav-flash](https://github.com/rolandwalker/nav-flash/tree/53f5bc59e3f32c1192d15637d3979732dacb2c35)

### MELPA Repo
* Flycheck
* Magit
* REST Client
* Yasnippet

### Built-in config
* [ibuffer](https://github.com/rogermolas/emacs-config/blob/master/setup/interface/ibuffer-config.el)
* [ido](https://github.com/rogermolas/emacs-config/blob/master/setup/interface/ido-config.el)
* [linum](https://github.com/rogermolas/emacs-config/blob/master/setup/programming/linum-config.el)

* Occur - Invoke on search mode
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

## Modes
* #### [irony-mode](https://github.com/Sarcasm/irony-mode) for C/C++ 
* #### [anaconda-mode](https://github.com/proofit404/anaconda-mode) for Python

## Themes

#### LIGHT
![Light Theme](https://raw.githubusercontent.com/rogermolas/emacs-config/master/theme/light.png)

#### DARK
![Light Theme](https://raw.githubusercontent.com/rogermolas/emacs-config/master/theme/dark.png)