;; IMAP
(setq gnus-select-method '(nnimap "mail.knittig.de"
                                  (nnimap-list-pattern ("INBOX" "INBOX.*"))))

;; Newsserver
(setq gnus-secondary-select-methods
      '((nntp "news.arcor.de")
;        (nntp "news.eclipse.org")
        (nntp "news.gmane.org")))

;; SMTP
(setq send-mail-function 'smtpmail-send-it)
(setq message-send-mail-function 'smtpmail-send-it)
(setq smtpmail-default-smtp-server "mail.knittig.de")
