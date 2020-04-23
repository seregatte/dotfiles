function +editor_toggle(){ 
	[[ "$EDITOR" = "vim" ]] && export EDITOR="sublime -w" || export EDITOR="vim"; echo "\"$EDITOR\" is your current default's editor."; 
}