alias +clear_git='git fetch --all && git reset --hard origin/master && git clean -f -d && git pull'
alias +t='/Users/joaopaulo/Dropbox/todo/todo.sh'
alias +brewupdate='cd $(brew --repository) && sudo git reset --hard FETCH_HEAD && sudo git clean -fd && sudo brew update'
alias +vboxdowninterface='VBoxManage hostonlyif remove'
alias +vboxrunning='VBoxManage list runningvms'
alias +http='python -m SimpleHTTPServer'
alias +lsjava='ls -la /Library/Java/JavaVirtualMachines/'
alias timeout=gtimeout