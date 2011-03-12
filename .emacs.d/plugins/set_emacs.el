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
;;配置禁止滚动条
(set-scroll-bar-mode nil)
;;配置禁止工具栏
(tool-bar-mode nil)
;;配置递归使用minibuffer
;(setq enable-recursive-minibuffers t)
;;配置标题栏显示文件名
(setq frame-title-format "emacs@%b")
;;配置语法加亮
;(global-font-lock-mode t)
;;配置代码折叠
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
;;配置启动显示行号
(global-linum-mode t)
