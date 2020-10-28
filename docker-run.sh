#!/usr/bin/env bash

echo $USER
docker run -d -p 10.0.0.2:9000:8080/tcp --mount src="$(pwd)",target=/root/project1,type=bind 19e27369d46f
