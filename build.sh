echo "Stack $1 is being created"
cat docker-compose.yml | sed -e "s/{{ .Stack.Name }}/$1/g" > docker-compose-built.yml
../rancher-compose -f ./docker-compose-built.yml -r ./rancher-compose.yml -p $1 create
