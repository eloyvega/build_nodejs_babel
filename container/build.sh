#!/bin/bash
PROJECT_ROOT=$(cd ..; pwd)

docker run -i --rm -v $PROJECT_ROOT:/srv/ -w="/srv/" --entrypoint="/bin/bash" node:6.11.2 -c "npm install --only=dev; npm run build"

tar -cvf app.tar -C ../dist/ .

docker build -t $1 .
