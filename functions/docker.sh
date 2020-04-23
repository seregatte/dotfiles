export CURRENT_DOCKER='default'

export DEFAULT_MACHINE_VBOX_HDD=80000
export VBOX_HDD=$DEFAULT_MACHINE_VBOX_HDD
export DEFAULT_MACHINE_VBOX_RAM=8192

function +dockerMachineCreate(){
	test $1 && \
	docker-machine create $1 --driver="virtualbox" --virtualbox-memory $DEFAULT_MACHINE_VBOX_RAM --virtualbox-disk-size $DEFAULT_MACHINE_VBOX_HDD --virtualbox-no-share || \
	echo "Error: Necessário um nome para criar a máquina"
}

function +dockerHalt(){
	docker-machine stop $CURRENT_DOCKER
}

function +dockerRun() {
	docker-machine start $CURRENT_DOCKER
	+dockerNFS	
}

function +dockerSetVariables() {
	eval "$(docker-machine env $CURRENT_DOCKER)"
	export DOCKER_IP=$(echo $DOCKER_HOST | sed 's#tcp://##' | sed 's#:[^:]*$##')
}

function +dockerSSH() {
	+dockerSetVariables
	echo "======= USE PASSWORD tcuser ======="
	ssh docker@$DOCKER_IP
}

function +dockerClean() {
	+dockerSetVariables
	docker volume rm $(docker volume ls -qf dangling=true)
}

function +dockerMachine() {
	[[ ! -z `docker-machine ls | grep Running | head -1 | awk '{ print $1 }'` ]] && eval $(docker-machine env `docker-machine ls | grep Running | head -1 | awk '{ print $1 }'`)
}