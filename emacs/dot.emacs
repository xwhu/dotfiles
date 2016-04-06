;; Xinwei's dot.emacs file  -*- mode: emacs-lisp; coding: utf-8-unix; -*-

(if (eq window-system 'ns)
    (progn
      ;; adapte keys modifier on mac
      ;; alt -> control and command -> meta, while control -> control
      (setq mac-control-modifier 'control)
      (setq mac-option-modifier 'control)
      (setq mac-command-modifier 'meta)
      (normal-erase-is-backspace-mode t)))

(if (eq window-system 'w32)
    (progn
      (set-default-font "-outline-新宋体-normal-normal-normal-mono-*-*-*-*-c-*-iso10646-1")))


;; 加载常用功能库
;;******************************************************************
(require 'align)
(require 'linum)
; (require 'org)                      ; do not load built-in org
(require 'git)                        ; this depends on git-el
;; (global-auto-complete-mode t)

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
;; load org mode by default
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-log-done t)

;; 高亮风格，color-theme插件
;;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;; (require 'color-theme)
;; (setq theme-default 'color-theme-dirk-sh)
;; (color-theme-dirk-sh)

;; 普通开关设置
;;******************************************************************
(global-font-lock-mode t)            ; 语法高亮
(auto-image-file-mode t)             ; 打开图片显示功能
(column-number-mode t)               ; 显示列号
(setq-default fill-column 81)        ; 81列显示提示线
(setq auto-fill-mode 1)
(show-paren-mode t)                  ; 显示括号匹配
(tool-bar-mode -1)                   ; 隐藏工具栏
(mouse-avoidance-mode 'animate)      ; 光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线
(transient-mark-mode t)              ; 允许临时设置标记，See C-h f transient-mark-mode
(setq mouse-yank-at-point t)         ; 支持中键粘贴
(setq inhibit-startup-message t)     ; 关闭启动时闪屏
(setq visible-bell t)                ; 关闭出错时的提示声
(setq default-major-mode 'text-mode) ; 一打开就起用 text 模式
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time-mode t)                ; 显示时间
(setq x-select-enable-clipboard t)   ; 支持emacs和外部程序的粘贴
(setq frame-title-format '("" buffer-file-name )) ; 在标题栏提示你目前在什么位置
(setq default-fill-column 80)        ; 默认显示 80列就换行
(setq load-home-init-file t)
(fset 'yes-or-no-p 'y-or-n-p)        ; 以 y/n代表 yes/no
(setq-default tab-width 4)           ; Tab缩进4个字符
(setq-default indent-tabs-mode nil)
(setq-default make-backup-files nil) ; 默认不要生成临时文件
(ido-mode t)                         ; enable ido mode for fast switch and find files

;; 编码设置
;;******************************************************************
(set-language-environment 'UTF-8)

;; 字体设置
;;******************************************************************
;(set-default-font "Monospace-12")
;(set-default-font "Bitstream Vera Sans Mono-12")
;(set-fontset-font (frame-parameter nil 'font)
;  'unicode '("wenquanyi bitmap song" . "unicode-bmp") 'nil 'append)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(current-language-environment "Chinese-GB18030")
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(display-time-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Noto Sans Mono CJK SC" :foundry "adobe" :slant normal :weight normal :height 151 :width normal)))))


(defun backward-delete-word (arg)
  "Delete characters backward until encountering the beginning of a word.
With argument ARG, do this that many times."
  (interactive "p")
  (delete-region (point) (progn (backward-word arg) (point))))

(define-key minibuffer-local-map [M-backspace] 'backward-delete-word)
