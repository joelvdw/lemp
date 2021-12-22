#!/bin/bash
set -e

uid=`id -u`
if [ $uid -ne 0 ];then
  echo "Uninstall script must be run as root"
  exit 1
fi

lemp stop > /dev/null 2>&1

rm -r /usr/local/lemp
rm /usr/local/bin/lemp
rm /etc/bash_completion.d/lemp-completion.sh

echo "LEMP tool uninstalled successfully"