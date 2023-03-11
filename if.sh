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

if [ -f /usr/local/bin/htop ]
then
    echo "Htop is installed"
else
    echo "Htop is not installed"
brew install htop #this is a command to install htop
fi

/usr/local/bin/htop
