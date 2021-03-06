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
	 (color-theme-billw))
	(t
	 (color-theme-initialize)
	 (color-theme-dark-laptop))
	))

(setq frame-background-mode 'dark)



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
;; utils
;;;;;;;;;;;;;;;;;;;;;

;; emacs kaizen book
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-ignore-bufffeers-re "*[*^]+*")


;; http://homepage3.nifty.com/oatu/emacs/archives/auto-save-buffers.el
(require 'auto-save-buffers)
(run-with-idle-timer 2 t 'auto-save-buffers)


;; from-emacswiki
(require 'point-undo)
(define-key global-map (kbd "<f7>") 'point-undo)
(define-key global-map (kbd "S-<f7>") 'point-redo)

(require 'goto-chg)
(define-key global-map (kbd "<f8>") 'goto-last-change)
(define-key global-map (kbd "S-<f8>") 'goto-last-change-reverse)

;; http://cvs.savannah.gnu.org/viewvc/*checkout*/bm/bm/bm.el
(setq-default mb-buffer-persistence nil)
(setq bm-restore-repository-on-load t)
(require 'bm)
(add-hook 'find-file-hooks 'bm-buffer-restore)
(add-hook 'kill-buffer-hook 'bm-buffer-save)
(add-hook 'after-save-hook 'bm-buffer-save)
(add-hook 'after-revert-hook 'bm-buffer-restore)
(add-hook 'vc-before-checkin-hook 'bm-buffer-save)
(global-set-key (kbd "M-SPC") 'bm-toggle)
(global-set-key (kbd "M-[") 'bm-previous)
(global-set-key (kbd "M-]") 'bm-next)




;;;;;;;;;;;;;;;;;;;;;;
;; mines
;;;;;;;;;;;;;;;;;;;;;
(require 'my-keybind)
(require 'my-emacs)
(require 'my-coding)
(require 'my-local)
;;(require 'my-skk)






;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; others





;;;;;;;;;;;;;;;;
;;(require 'cedet)
;; (global-ede-mode 1)
;; (semantic-load-enable-code-helpers)
