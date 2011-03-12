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
;;;;各窗口间切换
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)
;;配置自定义命令缩短
(defalias 'lml 'list-matching-lines)
(defalias 'dml 'delete-matching-lines)
(defalias 'gf 'grep-find)
(defalias 'sh 'eshell)
(defalias 'dj 'dired-jump) ;;跳到文件目录
(defalias 'bset 'bookmark-set)
