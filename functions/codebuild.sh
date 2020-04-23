function +codebuild(){
	docker-machine start aws; 
	eval $(docker-machine env aws);
	IMAGE_NAME=${1:-aws/ubuntu/docker:17.09.0};
	BUILDSPEC=${2:-`pwd`/buildspec.yml};
	docker run -it -v /var/run/docker.sock:/var/run/docker.sock -e "IMAGE_NAME=$IMAGE_NAME" -e "SOURCE=`pwd`" -e ARTIFACTS="`pwd`" -e "BUILDSPEC=$BUILDSPEC" amazon/aws-codebuild-local --privileged;
}