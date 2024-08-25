## Dockerfile example:

```dockerfile
FROM golang:1.20-alpine

WORKDIR /app

COPY . .

RUN go mod download
RUN go build -o main .

CMD ["/app/main"]
```

## Docker-compose example:
```yaml
services:
  db:
    image: postgres:16
    restart: always
    environment:
        POSTGRES_USER: yourpostgresuser
        POSTGRES_PASSWORD: mysecretpassword
        POSTGRES_DB: yourdbname
        PGDATA: /var/lib/postgresql/data
    ports:
      - 5433:5432
    volumes:
      - db:/var/lib/postgresql/data

volumes:
  db: 
```

## DB run with volume (postgres example)

```bash
docker run --name my-postgres \
  -e POSTGRES_PASSWORD=mysecretpassword \
  -v my_pgdata:/var/lib/postgresql/data \
  -p 5432:5432 \
  -d postgres
```

## For image pull 

```bash
docker pull someimage
```

## Helpful commands

## Docker image build example

```bash
docker build -t myapp .
```

## Instance of docker image

```bash
docker run -d -p 8080:80 myapp
```

## Persist data of container beyond lifecycle 

```bash
docker run -v /host/data:/container/data myapp
```

## Networking in containers

```bash
docker network create mynetwork
docker run --network mynetwork myapp
```

## Port mapping
```bash
docker run -p 8080:80 nginx
```

## Add config into container
```bash
docker run -e ENV=production myapp
```

## Orchestrate docker hosts
```
docker swarm init
```

##  Health Check
```bash
HEALTHCHECK CMD curl --fail http://localhost || exit 1
```

## Commands in running containers
```
docker exec -it mycontainer bash
```

## Docker logs
```
docker logs mycontainer
```