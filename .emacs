(add-to-list 'load-path
             "~/.emacs.d/plugins")
(load "set_emacs")
(load "mykey")
(load "set_require")


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
