# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.145.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version: bionic, focal
ARG VARIANT="focal"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

LABEL version="1.1"
LABEL maintaner="Ray C Horn (raychorn@gmail.com)"
LABEL release-date="10-27-2020"
LABEL promoted="true"

RUN apt-get update -y
RUN apt-get install curl -y --fix-missing
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs --fix-missing
RUN node -v
RUN npm version
RUN apt install build-essential -y --fix-missing
RUN apt-get install yes -y --fix-missing
RUN yes | npm install -g @angular/cli
RUN ng version
RUN apt-get upgrade git -y --fix-missing
RUN git --version
RUN git config --global user.email "raychorn@gmail.com"
RUN git config --global user.name "Ray C Horn" 
