;;; init.el

;; ready, set, go!
(defvar *emacs-load-start* (current-time))

;; load paths
(load "~/.emacs.d/vendor")

(require 'cl)

;; custom place to save customizations
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(when (file-exists-p ".passwords") (load ".passwords"))

(load "~/.emacs.d/elpa/package")
(load "~/.emacs.d/elpa")
(load "~/.emacs.d/global")
(load "~/.emacs.d/defuns")
(load "~/.emacs.d/bindings")
(load "~/.emacs.d/lisp")
(load "~/.emacs.d/modes")
(load "~/.emacs.d/markup")
(load "~/.emacs.d/ruby")
(load "~/.emacs.d/python")
(load "~/.emacs.d/vcs")
(load "~/.emacs.d/snippets")

;; finish!
(message "Loaded in %ds"
         (destructuring-bind
             (hi lo ms)
             (current-time)
           (- (+ hi lo)
              (+ (first *emacs-load-start*)
                 (second *emacs-load-start*)))))
