;;;;;;;;;;;;;;;;;;;;;;
;; my key binds
;;;;;;;;;;;;;;;;;;;;;;
(global-set-key "\C-c\C-c" 'comment-region)
(global-set-key "\C-c\M-c" 'uncomment-region)
(global-set-key "\C-c\C-j" 'anything)
(define-key anything-map "\C-h" 'backward-delete-char)
(global-set-key "\C-c\C-v" 'compile)



;;(windmove-default-keybindings)
(global-set-key "\C-ck" 'windmove-up)
(global-set-key "\C-cj" 'windmove-down)
(global-set-key "\C-ch" 'windmove-left)
(global-set-key "\C-cl" 'windmove-right)

;; see unix power tool p361
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\M-h" 'backward-kill-word)
(global-set-key "\C-cq" 'help-command)
(global-set-key "\C-]" 'undo)

;; avoid conflict

;; skk

;; indent
(global-set-key "\C-m" 'reindent-then-newline-and-indent)
(global-set-key "\C-m" 'newline)


;; 'newline-and-indent)


;; screen
(global-set-key "\C-t" nil)



(defun previous-line-and-recenter ()
  (interactive)
  (previous-line)
  (recenter))
(defun next-line-and-recenter ()
  (interactive)
  (next-line)
  (recenter))
(global-set-key "\C-l" 'recenter)
(global-set-key "\M-p" 'previous-line-and-recenter)
(global-set-key "\M-n" 'next-line-and-recenter)


(defun kill-current-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))

(global-set-key "\C-c\C-k" 'kill-current-buffer)


;; auto complete
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)




(provide 'my-keybind)
