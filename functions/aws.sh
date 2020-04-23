function +awsvars(){
	cat ~/.aws/credentials | sed -E 's%^[^=]*=%%' | sed -E 's%\[(.*)\]%\1%' | xargs -n3 | grep $1 | awk '{ 
print "export AWS_DEFAULT_REGION\=\"us-east-1\"\n\export\ AWS_ACCESS_KEY_ID=\""$2"\"\n\export AWS_SECRET_ACCESS_KEY=\""$3"\"\n\# Run this command to configure "$1" in your shell:\n\# eval $(+awsvars "$1")\n\n" }'	
}