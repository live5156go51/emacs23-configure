; my personal abbreviations
(define-abbrev-table 'global-abbrev-table '(

    ;; math/unicode symbols
    ;; ("tin" "∈" nil 0)
    ;; ("tnin" "∉" nil 0)
    ;; ("tinf" "∞" nil 0)
    ;; ("tluv" "♥" nil 0)
    ;; ("tsmly" "☺" nil 0)

    ;; email
    ("temm" "maillijunpeng@gmail.com" nil 0)

    ;; computing tech
    ;; ("twp" "Wikipedia" nil 0)
    ;; ("tms" "Microsoft" nil 0)
    ;; ("tg" "Google" nil 0)
    ;; ("tqt" "QuickTime" nil 0)
    ;; ("tit" "IntelliType" nil 0)
    ;; ("tmsw" "Microsoft Windows" nil 0)
    ;; ("twin" "Windows" nil 0)
    ;; ("tie" "Internet Explorer" nil 0)
    ;; ("tahk" "AutoHotkey" nil 0)
    ;; ("tpr" "POV-Ray" nil 0)
    ;; ("tps" "PowerShell" nil 0)
    ;; ("tmma" "Mathematica" nil 0)
    ;; ("tjs" "javascript" nil 0)
    ;; ("tvb" "Visual Basic" nil 0)
    ;; ("tyt" "YouTube" nil 0)
    ;; ("tge" "Google Earth" nil 0)
    ;; ("tff" "Firefox" nil 0)
    ;; ("tsl" "Second Life" nil 0)
    ;; ("tll" "Linden Labs" nil 0)
    ;; ("tcs" "Chthonic Syndicate" nil 0)
    ;; ("tee" "ErgoEmacs" nil 0)

    ;; normal english words
    ;; ("talt" "alternative" nil 0)
    ;; ("tchar" "character" nil 0)
    ;; ("tdef" "definition" nil 0)
    ;; ("tbg" "background" nil 0)
    ;; ("tkb" "keyboard" nil 0)
    ;; ("tex" "example" nil 0)
    ;; ("tkbd" "keybinding" nil 0)
    ;; ("tenv" "environment" nil 0)
    ;; ("tvar" "variable" nil 0)
    ;; ("tev" "environment variable" nil 0)
    ;; ("tcp" "computer" nil 0)

    ;; sig
    ;; ("tljp" "lijunpeng" nil 0)
    ;; ("tls" "http://ljp.9t9t.info " nil 0)

    ;; url
    ("tull" "http://ljp.9t9t.info" nil 0)
    ;; ("tuxp" "http://xahporn.org/" nil 0)
    ;; ("tuee" "http://ergoemacs.org/" nil 0)
    ;; ("tuvmm" "http://VirtualMathMuseum.org/" nil 0)
    ;; ("tu3dxm" "http://3D-XplorMath.org/" nil 0)

    ;; emacs regex
    ("tnum" "\\([0-9]+?\\)" nil 0)
    ("tstr" "\\([^\"]+?\\)\"" nil 0)
    ("tcurly" "“\\([^”]+?\\)”" nil 0)

    ;; shell commands
    ("tditto" "ditto -ck --sequesterRsrc --keepParent src dest" nil 0)
    ("tim" "convert -quality 85% " nil 0)
    ("tims" "convert -size  -quality 85% " nil 0)
    ("tim256" "convert +dither -colors 256 " nil 0)
    ("timf" "find . -name \"*png\" | xargs -l -i basename \"{}\" \".png\" | xargs -l -i  convert -quality 85% \"{}.png\" \"{}.jpg\"" nil 0)

    ("t0" "find . -type f -empty" nil 0)
    ("t00" "find . -type f -size 0 -exec rm {} ';'" nil 0)
    ("tchmod" "find . -type f -exec chmod 644 {} ';'" nil 0)
    ("tchmod2" "find . -type d -exec chmod 755 {} ';'" nil 0)

    ("tunison" "unison -servercmd /usr/bin/unison c:/Users/xah/web ssh://xah@example.com//Users/xah/web" nil 0)
    ("tsftp" "sftp xah@xahlee.org" nil 0)
    ("tssh" "ssh xah@xahlee.org" nil 0)
    ("trsync" "rsync -z -r -v -t --exclude=\"*~\" --exclude=\".DS_Store\" --exclude=\".bash_history\" --exclude=\"**/xx_xahlee_info/*\"  --exclude=\"*/_curves_robert_yates/*.png\" --exclude=\"logs/*\"  --exclude=\"xlogs/*\" --delete --rsh=\"ssh -l xah\" ~/web/ xah@example.com:~/" nil 0)

    ("trsync2" "rsync -r -v -t --delete --rsh=\"ssh -l xah\" ~/web/ xah@example.com:~/web/" nil 0)
    ("trsync3" "rsync -r -v -t --delete --exclude=\"**/My *\" --rsh=\"ssh -l xah\" ~/Documents/ xah@example.com:~/Documents/" nil 0)
    ))

;; stop asking whether to save newly added abbrev when quitting emacs
(setq save-abbrevs nil)

;; turn on abbrev mode
(abbrev-mode 1)