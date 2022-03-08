alias +clear_git='git fetch --all && git reset --hard origin/master && git clean -f -d && git pull'
alias +t='/Users/joaopaulo/Dropbox/todo/todo.sh'
alias +brewupdate='cd $(brew --repository) && sudo git reset --hard FETCH_HEAD && sudo git clean -fd && sudo brew update'
alias +vboxdowninterface='VBoxManage hostonlyif remove'
alias +vboxrunning='VBoxManage list runningvms'
alias +http='python -m SimpleHTTPServer'
alias +lsjava='ls -la /Library/Java/JavaVirtualMachines/'
alias sublime="/mnt/c/Arquivos\ de\ Programas/Sublime\ Text/subl.exe"
alias +sfdxClearSeller="sfdx force:data:bulk:delete -s Atonit_Mktplace__Inventory__c -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM Atonit_Mktplace__Inventory__c' -r csv) &&
sfdx force:data:bulk:delete -s Atonit_Mktplace__PriceBook__c -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM Atonit_Mktplace__PriceBook__c' -r csv) &&
sfdx force:data:bulk:delete -s Atonit_Mktplace__CommissionRule__c -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM Atonit_Mktplace__CommissionRule__c' -r csv) && 
sfdx force:data:bulk:delete -s Atonit_Mktplace__Cancelled_Item__c -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM Atonit_Mktplace__Cancelled_Item__c' -r csv) &&
sfdx force:data:bulk:delete -s Case -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM Case' -r csv) && 
sfdx force:data:bulk:delete -s Atonit_Mktplace__Seller_Order__c  -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM Atonit_Mktplace__Seller_Order__c' -r csv) && 
sfdx force:data:bulk:delete -s Atonit_Mktplace__Marketplace_Order__c  -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM Atonit_Mktplace__Marketplace_Order__c' -r csv) && 
sfdx force:data:bulk:delete -s Atonit_Mktplace__Seller__c -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM Atonit_Mktplace__Seller__c' -r csv) && 
sfdx force:data:bulk:delete -s Account -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM Account' -r csv)"
alias +sfdxClearProducts="sfdx force:data:bulk:delete -s Atonit_Mktplace__Category__c  -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM Atonit_Mktplace__Category__c' -r csv) && 
sfdx force:data:bulk:delete -s Atonit_Mktplace__Product__c  -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM Atonit_Mktplace__Product__c' -r csv) && 
sfdx force:data:bulk:delete -s Atonit_Mktplace__Product_Variant__c -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM Atonit_Mktplace__Product_Variant__c' -r csv) && 
sfdx force:data:bulk:delete -s Atonit_Mktplace__ProductMatchSuggestion__c -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM Atonit_Mktplace__ProductMatchSuggestion__c' -r csv)"
echo $HOME &> /dev/null | pbcopy 2> /dev/null|| alias pbcopy="clip.exe"
pbpaste 2> /dev/null || alias pbpaste="powershell.exe -command 'Get-Clipboard'"
sfdx --version &>/dev/null 2>/dev/null && source <(sfdx autocomplete:script bash)