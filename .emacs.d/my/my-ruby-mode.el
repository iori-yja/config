(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(setq auto-mode-alist (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("Rakefile" . ruby-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("rakefile" . ruby-mode)) auto-mode-alist))

(setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
   				     interpreter-mode-alist))

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
;;(define-key global-map "\C-cr" 'run-ruby)

(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
	  (lambda () (rinari-launch)))

(add-hook 'ruby-mode-hook
	  '(lambda ()
	     (require 'ruby-style)
	     (require 'rinari)
	     ;; (require 'ido)
	     ;; (ido-mode nil)

	     (inf-ruby-keys)

	     (require 'ruby-block)
	     (ruby-block-mode t)
	     (setq ruby-block-highlight-toggle t)

;	     (require 'ruby-electric)
;	     (require 'rubydb)

	     ))


(if (and (equal system-name "dev50.mojavy.com")
	 (if (equal 0 (shell-command "ls | egrep 'app|db|Rakefile'")) t))
    (and (require 'rinari)
	 (rinari-launch))
  nil)

(define-key ruby-mode-map "\C-m" 'reindent-then-newline-and-indent)
(define-key ruby-mode-map "\C-c\C-v" 'compile)
(provide 'my-ruby-mode)

