#!/bin/bash

#mynum1=250

#if [ $mynum1 -eq 250 ] #you use -d to check for directory, and -f to check for file.
#then
#    echo "Your number equals 250"
#elif [ $mynum1 -lt 100 ]
#then
#    echo "Your number is greater than 100"
#else
#    echo "Your number is less than 100"
#fi
program=htop
if command  -v $program #a bracket is used to run a test command, -v is used to check if a command is installed or not
then
    echo "$program is installed"
else
    echo "$program is not installed, installing it...."
brew install $program #this is a command to install htop
fi

$program
