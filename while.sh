#!/bin/bash

var=1

while [ $var -le 10 ] #while is used to run a command until a condition is met.  In this case, the condition is that the variable is less than or equal to 10.
do
    echo $var
    var=$((var+1)) #this is a way to increment a variable by 1
    sleep 1.0 #this is a command to sleep for 1 second
done


