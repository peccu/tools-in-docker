#!/bin/bash
BASEDIR=~/Codes/tool-in-docker
NAME=tool-in-docker-app-1
(docker ps | grep $NAME >/dev/null) \
    || docker compose \
	      -f ${BASEDIR}/docker-compose.yml \
	      up -d

docker exec \
    -it \
    -e LINES="`tput lines`" \
    -e COLUMNS="`tput cols`" \
    $NAME \
    /usr/local/bin/bash
#   ^ is 5.2 for zoxide's <Space>+<Tab> Shortcut key
# /bin/bash

# 履歴検索がまだ
    # /usr/bin/zsh
