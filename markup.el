;; tabkey2
(load "~/.emacs.d/vendor/nxhtml/util/tabkey2.el")

;; nxhtml
(setq *nxhtml-autostart-file* (expand-file-name "~/.emacs.d/vendor/nxhtml/autostart.el"))
(load *nxhtml-autostart-file*)
(setq
      nxhtml-global-minor-mode t
      mumamo-chunk-coloring 'submode-colored
      nxhtml-skip-welcome t
      indent-region-mode t
      rng-nxml-auto-validate-flag nil
      nxml-degraded t)
(add-to-list 'auto-mode-alist '("\\.html$" . nxhtml-mumamo-mode))
(add-to-list 'auto-mode-alist '("\\.html\\.erb$" . eruby-nxhtml-mumamo-mode))

(add-hook 'nxhtml-mumamo-mode-hook 'tabkey2-mode)
(add-hook 'eruby-nxhtml-mumamo-mode-hook 'tabkey2-mode)

;; css
(autoload 'css-mode "css-mode" "Mode for editing CSS files" t)
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-hook 'css-mode-hook
         (lambda()
           (local-set-key (kbd "<return>") 'newline-and-indent)
))

;; yaml
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; haml
(require 'haml-mode nil 't)
(require 'sass-mode nil 't)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

;; markdown
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))

;; textile
(autoload 'textile-mode "textile-mode.el"
  "Major mode for editing Textile files" t)
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))

;; DTD mode
(autoload 'dtd-mode "tdtd" "Major mode for SGML and XML DTDs." t)
(autoload 'dtd-etags "tdtd" "Execute etags on FILESPEC and match on DTD-specific regular expressions." t)
(autoload 'dtd-grep "tdtd" "Grep for PATTERN in files matching FILESPEC." t)
(setq auto-mode-alist (append (list
    '("\\.dcl$" . dtd-mode)
    '("\\.dec$" . dtd-mode)
    '("\\.dtd$" . dtd-mode)
    '("\\.ele$" . dtd-mode)
    '("\\.ent$" . dtd-mode)
    '("\\.mod$" . etd-mode))
  auto-mode-alist))
