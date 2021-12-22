#!/bin/bash
set -e

i=0
docker compose version > /dev/null 2>&1 && i=1
if [ $i -ne 1 ];then
  echo "'docker compose' command is not available. Install Docker Compose V2 to use LEMP tool."
  exit 1
fi

uid=`id -u`
if [ $uid -ne 0 ];then
  echo "Install script must be run as root"
  exit 1
fi

cd -- "$(dirname "${BASH_SOURCE[0]}")"

mkdir -p /usr/local/lemp

cp -r ./.docker /usr/local/lemp/
cp ./docker-compose.yml /usr/local/lemp/
cp ./lemp /usr/local/lemp/

ln -s /usr/local/lemp/lemp /usr/local/bin/lemp

cp ./lemp-completion.sh /etc/bash_completion.d/

echo "LEMP tool installed successfully"