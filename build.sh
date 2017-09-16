echo "Stack $1 is being created"
cat docker-compose.yml | sed -e "s/{{ .Stack.Name }}/$1/g" > docker-compose-built.yml
../rancher --url "$2" --access-key "$3" --secret-key "$4" stack create -f ./docker-compose-built.yml -r ./rancher-compose.yml
