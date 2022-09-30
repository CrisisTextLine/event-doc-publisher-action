# Container image that runs your code
FROM golang:1.19.1

# insall node, npm
RUN apt update
RUN apt install nodejs npm -y

# install the generator
RUN npm install -g @asyncapi/generator

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]