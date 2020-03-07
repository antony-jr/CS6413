#!/usr/bin/env bash
if [ $# -eq 0 ]
        then
                echo "Usage: exp2d [DIRECTORY PATH]"
                exit -1
fi

dir=$1

# Simulate opendir()
cd $dir

# Simulate readdir()
i=0
while read line
do
    array[ $i ]="$line"        
    (( i++ ))
done < <(ls ./)

# Print the first file
echo "The first file entry is '${array[0]}'"
