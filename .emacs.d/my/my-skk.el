;; (require 'skk)
;; (setq skk-rom-kana-base-rule-list
;;       (remove '("l" nil skk-latin-mode)
;; 	      skk-rom-kana-base-rule-list))
;; (setq skk-rom-kana-base-rule-list
;;       (append skk-rom-kana-base-rule-list
;; 	      '(("x" nil skk-latin-mode))))
;; (dolist (l '(("xx" "x" ("ッ" . "っ")) ("xa" nil ("ァ" . "ぁ"))
;; 	     ("xe" nil ("ェ" . "ぇ")) ("xi" nil ("ィ" . "ぃ"))
;; 	     ("xka" nil ("ヵ" . "か")) ("xke" nil ("ヶ" . "け"))
;; 	     ("xo" nil ("ォ" . "ぉ")) ("xtsu" nil ("ッ" . "っ"))
;; 	     ("xtu" nil ("ッ" . "っ")) ("xu" nil ("ゥ" . "ぅ"))
;; 	     ("xwa" nil ("ヮ" . "ゎ")) ("xwe" nil ("ヱ" . "ゑ"))
;; 	     ("xwi" nil ("ヰ" . "ゐ")) ("xya" nil ("ャ" . "ゃ"))
;; 	     ("xyo" nil ("ョ" . "ょ")) ("xyu" nil ("ュ" . "ゅ"))))
;;   (setq skk-rom-kana-base-rule-list(remove l skk-rom-kana-base-rule-list)))
;; (setq skk-rom-kana-rule-list
;;       (append skk-rom-kana-rule-list'(("la" nil ("ァ" . "ぁ")) ("li" nil ("ィ" . "ぃ"))
;; 				      ("lu" nil ("ゥ" . "ぅ")) ("le" nil ("ェ" . "ぇ"))
;; 				      ("lo" nil ("ォ" . "ぉ")) ("lka" nil ("ヵ" . "か"))
;; 				      ("lke" nil ("ヶ" . "け")) ("ltsu" nil ("ッ" . "っ"))
;; 				      ("ltu" nil ("ッ" . "っ")) ("lwa" nil ("ヮ" . "ゎ"))
;; 				      ("lwe" nil ("ヱ" . "ゑ")) ("lwi" nil ("ヰ" . "ゐ"))
;; 				      ("lya" nil ("ャ" . "ゃ")) ("lyo" nil ("ョ" . "ょ"))
;; 				      ("lyu" nil ("ュ" . "ゅ")) ("ll" "l" ("ッ" . "っ")))))


(require 'skk-autoloads)


(global-set-key "\C-x\C-j" 'skk-mode)
;; (global-set-key "\C-xj" 'skk-auto-fill-mode)
;; (global-set-key "\C-xt" 'skk-tutorial)

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; skk
(if (eq system-type 'darwin)
    (progn (setq skk-server-host "localhost" ; AquaSKK のサーバー機能を利用
                 skk-server-portnum 1178))    ; ポートは標準
  (setq skk-large-jisyo "~/.emacs.d/share/skk/SKK-JISYO.L"))




;; (setq skk-egg-like-newline t)

;; (add-hook 'isearch-mode-hook
;;           #'(lambda ()
;;               (when (and (boundp 'skk-mode)
;;                          skk-mode
;;                          skk-isearch-mode-enable)
;;                 (skk-isearch-mode-setup))))

;; (add-hook 'isearch-mode-end-hook
;;           #'(lambda ()
;;               (when (and (featurep 'skk-isearch)
;;                          skk-isearch-mode-enable)
;;                 (skk-isearch-mode-cleanup))))



;; ;; 動的補完で候補を複数表示する
;; (setq skk-dcomp-multiple-activate t
;;       skk-dcomp-multiple-rows 20)

;; ローマ字 prefix をみて補する
;(setq skk-comp-use-prefix t)
;; 補完時にサイクルする
;(setq skk-comp-circulate t)
;; 動的補完時に↓で次の補完へ
;(define-key skk-mode-map (kbd "<down>") 'skk-completion-wrapper)
;; 個人辞書の文字コードを指定する
;;(setq skk-jisyo-code 'utf-8)


;; (let ((default-directory (expand-file-name "~/.emacs.d/elisp")))
;;   (add-to-list 'load-path default-directory)
;;   (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
;;       (normal-top-level-add-subdirs-to-load-path)))


(provide 'my-skk)

