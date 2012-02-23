#!/bin/sh
# Change etemplin to whoever you want to annoy.
# Also, change tty7 to whatever their terminal is.
# echo -e '\a' | write etemplin tty6

# prints out "usernames computer"
# who | grep tty7 | awk '{print $1}' | xargs -I {} echo {}s computer

NAME=`who | grep tty7 | awk '{print $1}' | xargs echo -n`
TTY=tty7
echo $TTY
echo $NAME
echo -e '\a' | write $NAME $TTY
