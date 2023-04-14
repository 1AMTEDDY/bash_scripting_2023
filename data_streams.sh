#!/bin/bash

#Data sreams are a way to pass data to a program, and a way to get data out of a program.
find /etc -type f 2> file.txt  #this will find all the files in the /etc directory and print them to the screen without seeing the Stderror messages.
# this will redirected any error messages with error 2 to /dev/null to be completedly wiped out.if you remove the 2 it shows the error messages.
# 1 is for standard output it comes by default assumed by the shell, 2 is for standard error, 3 is for standard input.
#& is a shortcut for 1 and 2.
# a double > will overwrite the file, a single > will append to the file.

#The following is a way to show standard input from a usr to a file
echo "Enter your name please"
read name #read is an example of std input
echo "Hello $name, how are you today?" > file2.txt
