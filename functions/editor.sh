function +editor_toggle(){ 
	[[ "$EDITOR" = "vim" ]] && export EDITOR="code -w" || export EDITOR="vim"; echo "\"$EDITOR\" is your current default's editor."; 
}