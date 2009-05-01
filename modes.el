;; highlight FIXME, TODO, etc.
(require 'fixme-mode)

;; apache-mode
(autoload 'apache-mode "apache-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.htaccess\\'"   . apache-mode))
(add-to-list 'auto-mode-alist '("httpd\\.conf\\'"  . apache-mode))
(add-to-list 'auto-mode-alist '("apache2?\\.conf\\'"    . apache-mode))
(add-to-list 'auto-mode-alist '("ports\\.conf\\'" . apache-mode))
(add-to-list 'auto-mode-alist '("apache2?/conf.d/" . apache-mode))
(add-to-list 'auto-mode-alist '("sites-\\(available\\|enabled\\)/" . apache-mode))

;; cvs-mode
(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
(autoload 'csv-mode "csv-mode" "Major mode for editing comma-separated value files." t)
