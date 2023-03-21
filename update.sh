#!/bin/bash
#MAC USERS
#This updates all your packages and brew packages.  It also updates your MacOs. if brew is installed
#if not it will install it.
brewInstall= /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
update= brew update; brew upgrade; brew cu -ay; brew cleanup; pip install --upgrade `pip list --outdated | awk 'NR>2 {print $1}'`
package=/etc/brew
MacOs= softwareupdate -l
if [ -d $package ] #you use -d to check for directory, and -f to check for file.
then
    echo "Brew is installed, updating it...."
    $update
    $MacOs
else
    echo "Brew isn't installed, installing it...."
    $brewInstall
fi
