(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(setq-default inhibit-startup-screen t)


;; no backup files
(setq make-backup-files nil)

;; spaces only
(setq-default indent-tabs-mode nil)


;; Always show column numbers.
(setq-default column-number-mode t)

;; Display full pathname for files.
(add-hook 'find-file-hooks
	  '(lambda ()
	     (setq mode-line-buffer-identification 'buffer-file-truename)))

;; For easy window scrolling up and down.
(global-set-key "\M-n" 'scroll-up-line)
(global-set-key "\M-p" 'scroll-down-line)

;; For easier access to regex search/replace.
(defalias 'qrr 'query-replace-regexp)
