;;配置颜色
;;(require 'color-theme)
;;配置Emacs直接打开和显示图片
;(auto-image-file-mode)
;;配置 mixvm
(require 'mixvm)
(autoload 'mixvm "mixvm" "mixvm/gud interaction" t)
;;配置git
(add-to-list 'load-path "~/.emacs.d/plugins/contrib/emacs")
(require 'git)
(require 'git-blame)
;;配置智能补全yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1c")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")
;;配置智能补全auto-complete
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)
;;配置xcscope.el 需要安装sudo apt-get install cscope
(require 'xcscope)
;;配置session.el 列出最近访问
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
;;五笔
(load "wubi")
(setq default-input-method "chinese-wubi")
;; 最近打开的文件列表
;;(require 'recentf)
;;(recentf-mode 1)
;;配置Destktop.el 系统自带 打开上次打开的Buffer
;;(load "desktop")
;;(desktop-load-default)
;;(desktop-read)
;;配置ido.el C-x f 智能列表
;;(require 'ido)
;;(ido-mode t)
;;配置browse-kill-ring.el    C-c k ,kill列表
(require 'browse-kill-ring)
(global-set-key [(control c)(k)] 'browse-kill-ring)
(browse-kill-ring-default-keybindings)
;;配置ibuffer.el 排序替换功能
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
;;配置默认着色color.el
(require 'color-theme)
;;(color-theme-shaman)
;;配置ctypes.el 识别C文件的类型定义(typedef)并自动进行语法加亮
(require 'ctypes)
(ctypes-auto-parse-mode 1)
;;配置htmlize.el  导出html代码颜色
(require 'htmlize)
;;配置thumbs.el
;;(require 'thumbs) 不用配置 直接M-x thumbs emacs图片浏览器
;;配置tabbar.el 逻列tab
(require 'tabbar)
(tabbar-mode)
;;配置company-mode 代码提示 有了complete没发现实用之处
;(add-to-list 'load-path "/home/ljp/.emacs.d/plugins/company")
;(autoload 'company-mode "company" nil t)

;;配置切换tabbar快捷键
;;(global-set-key (kbd "s-up") 'tabbar-backward-group)
;;(global-set-key (kbd "s-down") 'tabbar-forward-group)
;;(global-set-key (kbd "s-left") 'tabbar-backward)
;;(global-set-key (kbd "s-right") 'tabbar-forward)
;;新版本org-mode配置
(setq load-path (cons "~/.emacs.d/plugins/org-7.7/lisp" load-path))
(setq load-path (cons "~/.emacs.d/plugins/org-7.7/contrib" load-path))
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;;配置shell-command
(require 'shell-command)
(shell-command-completion-mode)

;;配置IRC
;;(setq erc-default-coding-system '(utf-8 . utf-8)) ;;UTF字符编码
(setq erc-server-coding-system '(utf-8 . utf-8)) ;;UTF字符编码
(setq erc-encoding-coding-alist '(("#linuxfire" . chinese-iso-8bit))) ;;配置个别IRC-SERVER编码
;;配置nickname
(setq erc-nick "ljp`"
      erc-user-full-name "Junpeng Li")
;;预定IRC频道
(erc-autojoin-mode 1)
(setq erc-autojoin-channels-alist
      '(("#ubuntu-cn")))
;;配置IRC聊天记录
(require 'erc-log)
(erc-log-mode 1)
(setq erc-log-channels-directory "~/IRC/"
      erc-save-buffer-on-part t
      erc-log-file-coding-system 'utf-8
      erc-log-write-after-send t
      erc-log-write-after-insert t)
(unless (file-exists-p erc-log-channels-directory)
  (mkdir erc-log-channels-directory t))
;; ;;配置rect-madk.el 矩形操作  C-S-@     C-x r C-x
;; (define-key ctl-x-map "r\C-@" 'rm-set-mark)
;; (define-key ctl-x-map [?r ?\C-\ ] 'rm-set-mark)
;; (define-key ctl-x-map "r\C-x" 'rm-exchange-point-and-mark)
;; (define-key ctl-x-map "r\C-w" 'rm-kill-region)
;; (define-key ctl-x-map "r\M-w" 'rm-kill-ring-save)
;; (define-key global-map [S-down-mouse-1] 'rm-mouse-drag-region)
;; (autoload 'rm-set-mark "rect-mark"
;;   "Set mark for rectangle." t)
;; (autoload 'rm-exchange-point-and-mark "rect-mark"
;;   "Exchange point and mark for rectangle." t)
;; (autoload 'rm-kill-region "rect-mark"
;;   "Kill a rectangular region and save it in the kill ring." t)
;; (autoload 'rm-kill-ring-save "rect-mark"
;;   "Copy a rectangular region to the kill ring." t)
;; (autoload 'rm-mouse-drag-region "rect-mark"
;;   "Drag out a rectangular region with the mouse." t)

;;配置Ecb  sudo apt-get install ecb
;;配置ECB支持鼠标 m-x ecb-customize-most-important 找到Ecb Primary Secondary Mouse Buttons选项
;;将其设为“Primary: mouse-1, secondary: mouse-2”，并且以“Save for Future Sessions”并保存。
;;(require 'ecb)  ;;禁止加速启动
(setq  ecb-tip-of-the-day nil) ;;禁止提示
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(TeX-DVI-via-PDFTeX nil)
 '(TeX-PDF-mode t)
 '(ecb-options-version "2.32")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(muse-latexcjk-header "\\documentclass{article}
\\usepackage{CJKutf8} 
\\usepackage{indentfirst}
\\usepackage[CJKbookmarks=true]{hyperref}
\\usepackage[pdftex]{graphicx}
\\usepackage{amsmath}
\\begin{document}
\\begin{CJK*}<lisp>(muse-latexcjk-encoding)</lisp>
\\CJKfamily{gbsn}
\\title{<lisp>(muse-publish-escape-specials-in-string
  (muse-publishing-directive \"title\") 'document)</lisp>}
\\author{<lisp>(muse-publishing-directive \"author\")</lisp>}
\\date{<lisp>(muse-publishing-directive \"date\")</lisp>}

\\maketitle

<lisp>(and muse-publish-generate-contents
           (not muse-latex-permit-contents-tag)
           \"\\\\tableofcontents
\\\\newpage\")</lisp>

")
 '(muse-publish-date-format "%Y,%B %e")
 '(muse-wiki-ignore-implicit-links-to-current-page t)
 '(muse-wiki-match-all-project-files t)
 '(muse-wikipedia-country "zh"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(emacs-wiki-header-1 ((t (:inherit variable-pitch :weight bold :height 1.3)))))
;;配置ecb-semantic 索引帮助提示 待研究
;; (require 'cedet)
;; (semantic-load-enable-code-helpers)
;; (global-set-key [(control tab)] 'semantic-ia-complete-symbol-menu)

;;配置Tex排版
;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)
;; (setq-default TeX-master nil)
;; (mapc (lambda (mode)
;;       (add-hook 'LaTeX-mode-hook mode))
;;       (list 'auto-fill-mode
;;             'LaTeX-math-mode
;;             'turn-on-reftex
;;             'linum-mode))
;;配置Auctex
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex) ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex) ; with Emacs latex mode
(setq TeX-auto-save t)
(setq TeX-parse-self t)

;;配置ditaa插件ascii艺术 artist-mode
(setq org-ditaa-jar-path "/tmp/ditaa0_9.jar")
;(setq org-plantuml-jar-path "~/java/plantuml.jar")

(add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)

(org-babel-do-load-languages
 (quote org-babel-load-languages)
 (quote ((emacs-lisp . t)
         (dot . t)
         (ditaa . t)
         (R . t)
         (python . t)
         (ruby . t)
         (gnuplot . t)
         (clojure . t)
         (sh . t)
         (ledger . t)
         (org . t)
         (plantuml . t)
         (latex . t))))

; Do not prompt to confirm evaluation
; ; This may be dangerous - make sure you understand the consequences
; ; of setting this -- see the docstring for details
(setq org-confirm-babel-evaluate nil)
