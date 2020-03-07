#!/usr/bin/env bash

getpid() {
	if [ -z $! ]
	then
		echo $$
	else
		echo $!
	fi
}

main() {
	pid=$(getpid)
	for ((n=1; n < 5; ++n)); do
		echo "This line is executed $n time(s) from pid $pid"
		sleep 2
	done
}

# Simulate fork
main & main
