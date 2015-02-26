(setq load-path
     (append
      (list
       (expand-file-name "~/.emacs.d/elisp/"))
      load-path))

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(require 'dirtree)

; color-theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-snow)

;; SKK設定
(setq default-input-method 'japanese-skk)
(setq skk-show-inline t)
(setq skk-egg-like-newline t)
(setq skk-delete-implies-kakutei nil)
(require 'ac-ja.el)

; for move window
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; migemo
(require 'migemo)
(setq migemo-command "cmigemo")
(setq migemo-options '("-q" "--emacs"))
(setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
(setq migemo-user-dictionary nil)
(setq migemo-coding-system 'utf-8)
(setq migemo-regex-dictionary nil)

;; auto-complete(コピペ)
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq ac-auto-start t)

;; helm設定(コピペ)
;(helm-mode 1)
(require 'helm-config)
(require 'helm-ag)
(require 'helm-descbinds)

(helm-descbinds-mode)

(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-c b") 'helm-descbinds)
(global-set-key (kbd "C-c o") 'helm-occur)
(global-set-key (kbd "C-c s") 'helm-ag)
(global-set-key (kbd "C-c y") 'helm-show-kill-ring)

;; For PHP (コピペ)
(setq php-mode-force-pear t) ;PEAR規約のインデント設定にする
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode)) 

;; php-mode-hook
;; (add-hook 'php-mode-hook
;;   (lambda ()
;;   (require 'php-completion)
;;   (php-completion-mode t)
;;   (define-key php-mode-map (kbd "C-o") 'phpcmp-complete) ;php-completionの補完実行キーバインドの設定
;;   (make-local-variable 'ac-sources)
;;   (setq ac-sources '(
;;        ac-source-words-in-same-mode-buffers
;;        ac-source-php-completion
;;        ac-source-filename) t)

;(el-get 'sync 'smartchr)
;(el-get 'sync '(php-mode php-completion php-eldoc))
(when (require 'php-mode nil t)
  (defun my/php-mode-hook-function ()
    (when (require 'php-completion nil t)
      (php-completion-mode t))
    (define-key php-mode-map (kbd "C-o") 'phpcmp-complete)
    (let ((my/php-offset 4))
      (setq tab-width my/php-offset
	    c-basic-offset my/php-offset
	    indent-tabs-mode nil)
      (c-set-offset 'case-label' my/php-offset)
      (c-set-offset 'arglist-intro' my/php-offset)
      (c-set-offset 'arglist-cont-nonempty' my/php-offset)
      (c-set-offset 'arglist-close' 0))
    t)
  (add-hook 'php-mode-hook 'my/php-mode-hook-function)
 )
