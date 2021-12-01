function +sfdxClearObject(){
	test $1 && \
	sfdx force:data:bulk:delete -s $1  -w 100 -f <(sfdx force:data:soql:query -q 'SELECT Id FROM '${1}'' -r csv) || \
	echo "Error: A object name is needed."
}