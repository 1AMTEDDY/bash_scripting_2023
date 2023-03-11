#/bin/bash

#exit codes are a way to tell the system what happened when the script ran.
#0 is a success code
#anything else is a failure code
#you can use the $? to get the exit code of the last command that ran.

package=htop
if command -v $package
then
    echo "$package is installed"
elif [ ! $? -eq 0 ]
then
    echo "$package is not installed, installing it...."
    brew install $package
fi
$package
