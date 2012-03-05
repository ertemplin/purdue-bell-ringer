#!/bin/sh
# 
# Loops through every linux computer in Lawson 
#
# For more fun, try: for i in {1..10}; do ./spam.sh; done;

NAME=`whoami`
RINGER_PATH=$PWD"/ring.sh\n"

function doRing {
	# TODO Change this line here to match the path of the ring.sh script before running
	$RINGER_PATH | ssh -o StrictHostKeyChecking=no $NAME@$1.cs.purdue.edu 2>&1 >/dev/null
}

ME=$$

for host in moore sslab; do
	for id in {00..24}; do
		doRing ${host}${id} &
	done
done

for i in {1..5}; do
	for j in {1..5}; do
		doRing pod${i}-${j} &
	done
done

for id in {01..13}; do
	doRing sac${id} &
done

sleep 2
kill -9 $ME
