#! /bin/zsh

if [[ $# != 1 ]]; then
	printf "Usage: hub-add-collaborator <uname>\n"
fi



reponame=$(basename -s .git `git config --get remote.origin.url`)
read -p "github username: " username
read -p "github password: " -s password


curl -i -u "$username:$password" -X PUT -d '' "https://api.github.com/repos/$username/$reponame/collaborators/$1"
