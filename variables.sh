#!/bin/bash

name="Peterson"
age="25"
files=$(ls)
echo "Hello my name is $name and I'm $age years old here are your files: $files, and today is:" #you reference a variable with the $ sign. using double quotes.
date
echo "your User name is: $USER" #you can also reference variables that are already defined in bash.
#Varaiables help us to store data and reuse it. And avoid retyping.  It is a good practice to use variables for things that are going to be reused.  For example, if you have a username and password that you are going to use multiple times, it is a good idea to store them in variables.  This way, if you need to change the username or password, you only have to change it in one place.  This is called DRY (Don't Repeat Yourself).
