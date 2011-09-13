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
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(TeX-DVI-via-PDFTeX nil)
 '(TeX-PDF-mode t)
 '(cal-html-css-default "<STYLE TYPE=\"text/css\">
  BODY { background: #bde; }
  H1   { text-align: center; }
  TABLE  { padding: 2pt; }
  TH { background: #dee; }
  TABLE.year   { width: 100%; }
  TABLE.agenda { width: 100%; }
  TABLE.header { width: 100%; text-align: center; }
  TABLE.minical TD { background: white; text-align: center; }
  TABLE.agenda TD  { background: white; text-align: left; }
  TABLE.agenda TH  { text-align: left; width: 20%; }
  SPAN.NO-YEAR  { color: #0b3; font-weight: bold; }
  SPAN.ANN      { color: #0bb; font-weight: bold; }
  SPAN.BLOCK    { color: #048; font-style: italic; }
</STYLE>
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />
")
 '(cal-html-directory "~/project/calendar")
 '(calendar-chinese-all-holidays-flag t)
 '(ecb-options-version "2.40")
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
(put 'upcase-region 'disabled nil)
