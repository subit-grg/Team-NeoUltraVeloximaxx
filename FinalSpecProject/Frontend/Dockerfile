FROM node
WORKDIR /app
COPY . /app
RUN apt-get update && \
      apt-get -y install sudo
RUN sudo apt install nodejs -y
RUN sudo apt install npm -y
RUN npm install -g @angular/cli
EXPOSE 4200
ENTRYPOINT ng serve --host 0.0.0.0 --port 4200 --disableHostCheck true