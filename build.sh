echo "Stack $1 is being created"
cat docker-compose.yml | sed -e "s/{{ .Stack.Name }}/$1/g" > docker-compose-built.yml
./rancher up -s $1 -f ./docker-compose-built.yml --rancher-file ./rancher-compose.yml
