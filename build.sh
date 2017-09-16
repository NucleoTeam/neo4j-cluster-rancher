
echo "Stack $1"
sed -i -e 's/{{ .Stack.Name }}/$1/g' ./docker-compose.yml
./rancher up -s $1 -f ./docker-compose.yml --rancher-file ./rancher-compose.yml
