(load "~/.emacs.d/elpa/package")
;(require 'package)
(package-initialize)

(defvar packages (list
                  'css-mode
                  'gist
                  'highlight-80+
                  'highlight-parentheses
                  'inf-ruby
                  'js2-mode
                  'json
                  'jump
                  'nav
                  'nxml
                  'rinari
                  'ruby-compilation
                  'ruby-mode
                  'xml-rpc
                  'yasnippet-bundle)
  "Libraries that should be installed by default.")

(defun elpa-install ()
  "Install all packages that aren't installed."
  (interactive)
  (dolist (package packages)
    (unless (or (member package package-activated-list)
                (functionp package))
      (message "Installing %s" (symbol-name package))
      (package-install package))))
