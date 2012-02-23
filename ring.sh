#!/bin/sh
# Ring the bell if the user is logged in to tty7

# echo -e '\a' | write etemplin tty7


NAME=`who | grep tty7 | awk '{print $1}' | xargs echo -n`
TTY=tty7
echo $TTY
echo $NAME
echo -e '\a' | write $NAME $TTY
