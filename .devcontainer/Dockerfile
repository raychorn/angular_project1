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
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs --fix-missing && \
    node -v && \
    npm version && \
    apt install build-essential -y --fix-missing && \
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

