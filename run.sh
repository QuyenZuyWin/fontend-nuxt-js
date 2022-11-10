#!/bin/bash

COMMANDS=(
"docker-up"
"docker-down"
"exec-node"
)


echo Please select a command.
select COMMAND in ${COMMANDS[@]}
do
  if [ -z "$COMMAND" ]; then
    continue
  else
    break
  fi
done
echo You selected $REPLY\) $COMMAND

if [ $COMMAND = "docker-up" ]; then
  docker-compose up -d
  docker-compose ps
fi

if [ $COMMAND = "docker-down" ]; then
  docker-compose down
fi

if [ $COMMAND = "exec-node" ]; then
  docker-compose exec node sh
fi

