#! /bin/bash

docker system prune -f
docker rmi $(docker images -a -q)
docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
cd Backend
docker build -t sibel97/backend:latest .
docker push sibel97/backend:latest
cd ..
cd Frontend
docker build -t sibel97/frontend:latest .
docker push sibel97/frontend:latest
cd ..
cd mySQL
docker build -t sibel97/sql:latest
docker push sibel97/sql:latest
cd .. 