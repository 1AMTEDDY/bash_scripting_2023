#!/bin/bash
#a function is a block of code that is defined that can be called from anywhere in the script.

#function
check_exit_code() {
       if [ $? -eq 0 ]; then
            echo "Command executed successfully"
        else
            echo "Command failed"
        fi
}
program=brew
if command -v $program
then
    echo "$program is installed"
    check_exit_code
else
    echo "$program is not installed, installing it...."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    check_exit_code #this is a function call.
fi


