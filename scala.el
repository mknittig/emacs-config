(let ((path "~/.emacs.d/vendor/scala-mode"))
  (setq load-path (cons path load-path))
  (load "scala-mode-auto.el"))

(defun scala-turnoff-indent-tabs-mode ()
  (setq indent-tabs-mode nil))
(add-hook 'scala-mode-hook 'scala-turnoff-indent-tabs-mode)

(load "~/.emacs.d/vendor/misc/sbt.el")
