export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

vt=$(fgconsole 2>/dev/null)
(( vt == 1 )) && exec startx -- vt$vt &> ~/.xlog
unset vt
