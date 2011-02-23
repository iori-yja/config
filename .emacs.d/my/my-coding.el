(require 'my-c-mode)
;(require 'my-php-mode)
(require 'my-java-mode)
(require 'my-scheme-mode)
(require 'my-ruby-mode)
(require 'my-javascript-mode)
(require 'my-actionscript-mode)

;; yasnippet
(add-to-list 'load-path "~/.emacs.d/elisp/yasnippet.el")

(require 'yasnippet)
(yas/initialize)
;(setq yas/root-directory "/Users/takayuki/work/git/local/dev/conf/.emacs.d/snippets") ;; must be full path
;(yas/load-directory yas/root-directory)

(provide 'my-coding)
