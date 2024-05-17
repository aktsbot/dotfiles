docker run -d \
    --name local-dev-postgres \
    -e POSTGRES_PASSWORD=postgres \
    -e POSTGRES_USERNAME=postgres \
    -v ${HOME}/Projects/docker-volumes/postgres/:/var/lib/postgresql/data \
    -p 5432:5432 postgres

docker run -d -p 27017:27017 --name local-dev-mongo -v data-vol:$HOME/Projects/docker-volumes/mongodb mongo
