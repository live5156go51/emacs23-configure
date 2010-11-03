;;获取帮助 C-h h
;; C-h f 查看某个函数的文档
;; C-h v 查看某个变量的文档
;; C-h a 使用正则表达式来查找命令
;; C-h k 描述我接下来的键入动作
;; C-h l 显示最近的 100 个键入动作。
;; C-h m 描述当前的 mode
;; C-h i 查看 info 文档
;; M-x global-set-key RET 交互式的绑定你的键。
;; C-x Esc Esc 调出上一条“复杂命令”。
;; 通常"t" is ture,"nil" is false 但对于模式是"1"为允许，"0"禁止
;;M-x windmove-default-keybindings   <S-left S-right S-up S-down> 快速切换窗口

;;指定配置目录
(add-to-list 'load-path
             "~/.emacs.d/plugins")
;;指定auto-complete配置目录
(add-to-list 'load-path 
			  "~/.emacs.d/plugins/auto-complete")
(add-to-list 'load-path
	     "~/.emacs.d/plugins/auto-complete/ac-dict")
;;(setq make-backup-file nil) ;;禁止自动创建~文件
(setq auto-save-default nil) ;;禁止自动创建#auto-file#文件
;;配置emacs备份文件都存在一个文件夹内
(defun my-backup-file-name (fpath)
  "Return a new file path of a given file path.
If the new path's directories does not exist, create them."
  (let (backup-root bpath)
    (setq backup-root "~/emacs-backup")
    (setq bpath (concat backup-root fpath "~"))
    (make-directory (file-name-directory bpath) bpath)
    bpath))
(setq make-backup-file-name-function 'my-backup-file-name)
;;配置自定义命令缩短
(defalias 'lml 'list-matching-lines)
(defalias 'dml 'delete-matching-lines)
(defalias 'gf 'grep-find)
(defalias 'sh 'shell)
(defalias 'dj 'dired-jump) ;;跳到文件目录
(defalias 'bset 'bookmark-set)
;;配置快捷键
(global-set-key (kbd "<f1>") 'help-command) ;;<f1> 帮助
(global-set-key (kbd "<f2>") 'speedbar-frame-mode);;<f2>speedbar
(global-set-key (kbd "<f3>") 'search-forward);;<f3> 向前查找forward-search
(global-set-key (kbd "<C-f3>") 'list-matching-lines);;<M-3>列表搜索到的关键词
(global-set-key (kbd "<f4>") 'tabbar-forward);;<f4> 切换 change tab
(global-set-key (kbd "<C-f4>") 'kill-this-buffer);;<C-f4> 关闭当前 close buffer
(global-set-key (kbd "<f5>") 'ibuffer) ;;<f5> ibuffer
(global-set-key (kbd "<C-f5>") 'bookmark-bmenu-list);;M-5书签列表
(global-set-key (kbd "<f6>") 'grep-find) ;;配置正则表达式grep-find
(define-key global-map [f7] 'other-window);;[f7]切换窗口
(global-set-key (kbd "<f9>") 'compile);;<f9> 编译compile
(global-set-key (kbd "<f10>") 'grep);;<f10> 正规表达式grep
(global-set-key (kbd "<C-f12>") 'htmlize-buffer);;<C-f12> 导出htmlize
;;(global-set-key (kbd "<f6>") 'shell);;配置<f6>--shell
;;配置个人信息
(setq user-full-name "Li Junpeng")
(setq user-mail-address "maillijunpeng@gmail.com")
;;配置保存书签
(setq bookmark-save-flag 1)
;;配置默认模式
(setq default-major-mode 'text-mode)
;;配置关闭启动画面
(setq inhibit-startup-message t)
;;配置 *scratch* buffer提示信息
(setq initial-scratch-message "")
;;配置鼠标点击插入剪贴板内容 替换鼠标中键
(setq mouse-yank-at-point t)
;;配置括号匹配时显示另外一边的括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;配置递归使用minibuffer
;(setq enable-recursive-minibuffers t)
;;配置标题栏显示文件名
(setq frame-title-format "emacs@%b")
;;配置语法加亮
;(global-font-lock-mode t)
;;配置emacs-wiki
(setq load-path (add-to-list 'load-path 
			     "/usr/local/share/emacs23/site-lisp/emacs-wiki"))
(require 'emacs-wiki)
(require 'emacs-wiki-table)
;;配置emacs muse
(add-to-list 'load-path
             "/usr/local/share/emacs23/site-lisp/muse")
(require 'muse-mode)
(require 'muse-html)         ;添加html格式的支持
(require 'muse-latex)        ; 添加latex格式的支持
(require 'muse-texinfo)      ; 添加texinfo格式的支持
(require 'muse-docbook)      ; 添加docbook格式的支持
(require 'muse-wiki nil t)   
(require 'muse-project)      ; 添加wiki project的支持
;设置编码方式为utf-8
(setq muse-html-meta-content-type (concat "text/html; charset=utf-8"))
;新建一个wiki工程
(setq muse-project-alist
      '(("wiki"
         ("~/www/wiki" :default "index")
         (:base "html" :path "~/www/wiki/publish/html")
	 (:base "pdf" :path "~/www/wiki/publish/pdf")
	 (:base "latexcjk" :path "~/www/wiki/publish/latex"))))
;;配置对read-only buffer自动进行 view-mode
(add-hook 'find-file-hook (lambda ()
                            (if buffer-read-only
                                (view-mode 1))))
;;配置代码折叠
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
;;配置颜色
;;(require 'color-theme)
;;配置Emacs直接打开和显示图片
;(auto-image-file-mode)
;;配置启动显示行号
;;(setq linum-mode t)
;;配置 mixvm
(require 'mixvm)
(autoload 'mixvm "mixvm" "mixvm/gud interaction" t)
;; 配置PHP-MODE
(require 'php-mode)
(add-to-list 'auto-mode-alist '("\\.module$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.install$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.engine$" . php-mode))
;;配置git
(add-to-list 'load-path "~/.emacs.d/plugins/contrib/emacs")
(require 'git)
(require 'git-blame)

;;配置智能补全yasnippet
(require 'yasnippet-bundle)
;;配置智能补全auto-complete
(require 'auto-complete-config)
(ac-config-default)
;;配置个人缩写 my_emacs_abbrev.el
(load "my_emacs_abbrev")
;;配置html-helper-mode
     (autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
;;   To invoke html-helper-mode automatically on .html files, do this:
     (setq auto-mode-alist (cons '("\\.html$" . html-helper-mode) auto-mode-alist))
;;   To invoke html-helper-mode automatically on .asp files, do this:
     (setq auto-mode-alist (cons '("\\.asp$" . html-helper-mode) auto-mode-alist))
;;   To invoke html-helper-mode automatically on .phtml files, do this:
     (setq auto-mode-alist (cons '("\\.phtml$" . html-helper-mode) auto-mode-alist))

;;配置系统补全hippie-expand
;; (global-set-key [(meta ?/)] 'hippie-expand) ;;M-/
;; (setq hippie-expand-try-functions-list 
;;       '(try-expand-dabbrev
;; 	try-expand-dabbrev-visible
;; 	try-expand-dabbrev-all-buffers
;; 	try-expand-dabbrev-from-kill
;; 	try-complete-file-name-partially
;; 	try-complete-file-name
;; 	try-expand-all-abbrevs
;; 	try-expand-list
;; 	try-expand-line
;; 	try-complete-lisp-symbol-partially
;; 	try-complete-lisp-symbol))

;;配置xcscope.el 需要安装sudo apt-get install cscope
(require 'xcscope)
;;配置session.el 列出最近访问
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
;;配置Destktop.el 系统自带 打开上次打开的Buffer
(load "desktop")
(desktop-load-default)
(desktop-read)
;;配置ido.el C-x f 智能列表
(require 'ido)
(ido-mode t)
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

;;配置shell-command
(require 'shell-command)
(shell-command-completion-mode)

;;配置IRC
(setq erc-default-coding-system '(utf-8 . utf-8)) ;;UTF字符编码
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
;;配置启动web查询应用
(defun lookup-word-definition ()
  "Look up the current word's definition in a browser.
If a region is active (a phrase), lookup that phrase."
 (interactive)
 (let (myword myurl)
   (setq myword
         (if (and transient-mark-mode mark-active)
             (buffer-substring-no-properties (region-beginning) (region-end))
           (thing-at-point 'symbol)))
  (setq myword (replace-regexp-in-string " " "%20" myword))
;;  (setq myurl (concat "http://www.answers.com/main/ntquery?s=" myword))
  (setq myurl (concat "http://www.google.com.hk/search?hl=zh-CN&source=hp&biw=1279&bih=864&q=" myword))
  (browse-url myurl)
  ;; (w3m-browse-url myurl) ;; if you want to browse using w3m
   ))
(global-set-key (kbd "<C-f6>") 'lookup-word-definition) ;;启动浏览器查询
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
