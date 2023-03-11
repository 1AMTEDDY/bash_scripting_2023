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
command=htop
if command  -v $command #a bracket is used to run a test command, -v is used to check if a command is installed or not
then
    echo "$command is installed"
else
    echo "$command is not installed, installing it...."
brew install $command #this is a command to install htop
fi

$command
