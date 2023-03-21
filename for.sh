#!/bin/bash

for i in {1..10} #this is a for loop that will run 10 times
do
    echo $i - $((i*2)) #this echos the number and the number multiplied by 2
    sleep 1.0
done

echo 'Done'

for file in $(ls) #this is a for loop that will run for every file in the current directory
do
    cat $file #this will print the contents of the file
    sleep 2.0
done

echo 'Done'
