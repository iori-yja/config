;;;;;;;;;;;;;;;;;;;;;;
;; load files
;;;;;;;;;;;;;;;;;;;;;;
(setq load-path (append load-path '("~/.emacs.d"
				    "~/.emacs.d/elisp"
				    "~/.emacs.d/elisp/rinari"
				    "~/.emacs.d/elisp/rinari/rhtml"
				    "~/.emacs.d/elisp/skk"
				    "~/.emacs.d/conf"
				    "~/.emacs.d/color-theme"
				    "~/.emacs.d/my"
;;				    "/Users/takayuki/.emacs.d/share/emacs/site-lisp/w3m"
				    )))


;;;;;;;;;;;;;;;;;;;;;;;;
;; autoinstall
;; http://www.emacswiki.org/emacs/download/auto-install.el
;;;;;;;;;;;;;;;;;;;;;;;;
(when (require 'auto-install)
  (setq auto-install-directory "~/.emacs.d/elisp/")
  (auto-install-update-emacswiki-package-name t)
  (auto-install-compatibility-setup))

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; autocomplete
;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'auto-complete)
(global-auto-complete-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; recentf
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'recentf-ext)
(setq recentf-auto-cleanup 'never)
(recentf-mode 1)
(setq recentf-max-menu-items 10)
(setq recentf-max-saved-items 500)
(require 'recentf-ext)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; anything
;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'anything-startup)
(when (require 'color-moccur nil t)
  (global-set-key "\M-o" 'occur-by-moccur)
  (setq moccur-split-word t)
  (add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
  (add-to-list 'dmoccur-exclusion-mask "\\.^#.+#$")
  (require 'moccur-edit nil t))

(setq anything-sources (list anything-c-source-recentf
			     anything-c-source-man-pages
                             anything-c-source-buffers
                             anything-c-source-bookmarks
			     anything-c-source-file-name-history
                             anything-c-source-locate
                             anything-c-source-complex-command-history))

(require 'anything-config)

(define-key anything-map "\C-p" 'anything-previous-line)
(define-key anything-map "\C-n" 'anything-next-line)
(define-key anything-map "\C-v" 'anything-next-page)
(define-key anything-map "\M-v" 'anything-previous-page)

;; ;; iswitchb
;; (iswitchb-mode nil)
;; (setq iswitchb-buffer-ignore
;;       '("^ "
;; 	"^#"))
;;(anything-iswitchb-setup)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; color
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (require 'color-theme nil t)
  (cond ((equal system-name "mojavy-macbookair.local")
	 (color-theme-initialize)
	 (color-theme-deep-blue))
	((equal system-name "dev50.mojavy.com")
	 (color-theme-classic))
	(t
	 (color-theme-initialize)
	 (color-theme-dark-laptop))
	))



;;;;;;;;;;;;;;;;;;;;;;
;; cedet
;;;;;;;;;;;;;;;;;;;;;
(load-file "~/.emacs.d/share/cedet/common/cedet.el")
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion
(global-srecode-minor-mode 1)            ; Enable template insertion menu-items


;;;;;;;;;;;;;;;;;;;;;;
;; w3m
;;;;;;;;;;;;;;;;;;;;;
;;(require 'w3m)
 ;; (setq browse-url-browser-function 'w3m-browse-url)
 ;; (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
 ;; ;; optional keyboard short-cut
 ;; (global-set-key "\C-xm" 'browse-url-at-point)


;;;;;;;;;;;;;;;;;;;;;;
;; mines
;;;;;;;;;;;;;;;;;;;;;
(require 'my-keybind)
(require 'my-emacs)
(require 'my-coding)
;;(require 'my-skk)






;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; others





;;;;;;;;;;;;;;;;
;;(require 'cedet)
;; (global-ede-mode 1)
;; (semantic-load-enable-code-helpers)
