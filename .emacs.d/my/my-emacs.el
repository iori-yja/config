;;;;;;;;;;;;;;;;;;;;;;
;; emacs settings
;;;;;;;;;;;;;;;;;;;;;;
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
(menu-bar-mode 0)
;;(tool-bar-mode 0)
(setq column-number-mode t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)


(setq make-backup-files t)
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/bak"))
            backup-directory-alist))




(provide 'my-emacs)
