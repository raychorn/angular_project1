# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.145.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version: bionic, focal
ARG VARIANT="focal"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

LABEL version="1.1"
LABEL maintaner="Ray C Horn (raychorn@gmail.com)"
LABEL release-date="10-27-2020"
LABEL promoted="true"

RUN apt-get update -y && \
    apt-get install curl -y --fix-missing && \
    apt-get install build-essential libssl-dev -y --fix-missing

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash && \
    source ~/.bashrc && \
    nvm install v9.3.0 && \
    node -v && \
    npm version

RUN apt install build-essential -y --fix-missing && \
    yes | npm install -g @angular/cli && \
    ng version && \
    apt-get upgrade git -y --fix-missing && \
    git --version && \
    git config --global user.email "raychorn@gmail.com" && \
    git config --global user.name "Ray C Horn"  && \
    apt install default-jre -y --fix-missing && \
    apt install openjdk-11-jre-headless -y --fix-missing && \
    apt install openjdk-8-jre-headless -y --fix-missing 

RUN npm install -g firebase-tools

