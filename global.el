;; Get rid of the startup screen
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)

;; Don't blink
(blink-cursor-mode -1)

;; Don't peep
(setq ring-bell-function 'ignore)

;; Show extra whitespace
;(setq show-trailing-whitespace t)

;; Delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Ensure last line is a return
(setq require-final-newline t)

;; Set encoding
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Get back font antialiasing
(push '(font-backend xft x) default-frame-alist)

;; No toolbar
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tool-bar-mode -1))

(setq make-backup-files nil)
(setq query-replace-highlight t)
(setq search-highlight t)
(setq font-lock-maximum-decoration t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq require-final-newline t)
(setq default-major-mode 'text-mode)

;; Save a list of recent files visited.
(recentf-mode 1)

'(transient-mark-mode t)

;; Turn on paren matching
(show-paren-mode t)
(setq show-paren-style 'mixed)

(global-font-lock-mode 1)
(setq font-lock-maximum-decoration t)
;;(setq font-lock-global-modes '(not text-mode))
(setq font-lock-verbose t)

(mouse-wheel-mode t)

;; Browse with Firefox
(setq browse-url-browser-function 'browse-url-firefox)

;; redo
(require 'redo)
(global-set-key [(control +)] 'redo)

;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
;; ido-mode is like magic pixie dust!
(when (> emacs-major-version 21)
  (ido-mode t)
  (setq ido-enable-prefix nil
        ido-enable-flex-matching t
        ido-create-new-buffer 'always
        ido-use-filename-at-point t
        ido-max-prospects 10))

(set-default 'indent-tabs-mode nil)
(set-default 'indicate-empty-lines t)
(set-default 'imenu-auto-rescan t)

(add-hook 'text-mode-hook 'turn-on-auto-fill)
;(add-hook 'text-mode-hook 'turn-on-flyspell)

;; iswitch-menu
(require 'iswitch-menu)

;; flyspell
;;(add-hook 'text-mode-hook 'flyspell-mode)
(autoload 'flyspell-mode "flyspell" "On-the-fly ispell." t)
(setq flyspell-issue-welcome-flag nil)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

;; idle-highlight
;(require 'idle-highlight)

;(defun my-coding-hook ()
;  (make-local-variable 'column-number-mode)
;  (column-number-mode t)
;;  (if window-system (hl-line-mode t))
;  (idle-highlight))

;(add-hook 'emacs-lisp-mode-hook 'my-coding-hook)
;(add-hook 'ruby-mode-hook 'my-coding-hook)
;(add-hook 'js2-mode-hook 'my-coding-hook)

(require 'rcodetools)
(require 'icicles-rcodetools)

(require 'anything-rcodetools)
(require 'anything-config)

;; Install mode-compile to give friendlier compiling support!
(autoload 'mode-compile "mode-compile"
   "Command to compile current buffer file based on the major mode" t)
(global-set-key "\C-cc" 'mode-compile)
(autoload 'mode-compile-kill "mode-compile"
 "Command to kill a compilation launched by `mode-compile'" t)
(global-set-key "\C-ck" 'mode-compile-kill)

;; scpaste
(autoload 'scpaste "scpaste" "Paste the current buffer." t nil)

;; textmate
(require 'textmate)
(textmate-mode)

;; find unbound keystrokes
(autoload 'describe-unbound-keys "unbound" "Find convenient unbound keystrokes" t nil)
