#!/bin/bash

#an argument is a value that is passed to a script when it is called.
#the first argument is $1, the second is $2 and so on.
#the $# variable is the number of arguments passed to the script.

# echo "The name of this script is: $1 you love $2 and like reading $3"

#the following is a way to check if the user has passed the correct number of arguments to the script.
# ./arg.sh argument pizza books #this is an example of passing arguments to a script.

#in linux you can do ls -l ~/.ssh in your downloads directory to see the ssh keys you have. there the ~/.ssh is the 'argument'.

lines=$(ls -lh $1 | wc -l)

if [ $# -ne 1 ]; then
    echo "You must pass exactly one argument to this script."
    exit 1
fi

echo "you have $(($lines - 1)) objects in your $1 directory"
