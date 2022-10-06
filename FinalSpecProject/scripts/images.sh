#! /bin/bash

sudo docker system prune -f
sudo docker rmi $(docker images -a -q)
sudo docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
cd Backend
sudo docker build -t sibel97/backend:latest .
sudo docker push sibel97/backend:latest
cd ..
cd Frontend
sudo docker build -t sibel97/frontend:latest .
sudo docker push sibel97/frontend:latest
cd ..
cd mySQL
sudo docker build -t sibel97/sql:latest
sudo docker push sibel97/sql:latest
cd .. 
