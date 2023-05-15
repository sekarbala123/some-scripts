#/bin/bash

## Query if container exits
## Author: Bala
## Date: 15-May-23

INPUT_CONTAINER_NAME=$1
# INPUT_STATUS_FLAG=$2

if [[ -z $INPUT_CONTAINER_NAME ]] then
  echo "Enter docker container name to be searched"
  exit 1
fi

CONTAINER_COUNT=$(docker ps -q -f name=$INPUT_CONTAINER_NAME | wc -l)

if [[ $CONTAINER_COUNT -gt 0 ]] then
  echo "Container found"
  exit 0
else
  echo "Contaier Not Found"
  exit 1
fi

# if [[ -z $INPUT_STATUS_FLAG ]] then
#   echo "No search lable requested. Proceeding"
#   echo ""
#   # docker ps -f
# else
#   echo 2
# fi
