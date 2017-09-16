echo "Stack $1 is being created"
cat docker-compose.yml | sed -e "s/{{ .Stack.Name }}/$1/g" > docker-compose-built.yml
../rancher-compose --url "$2" --access-key "$3" --secret-key "$4" -f ./docker-compose-built.yml -r ./rancher-compose.yml -p $1 create
