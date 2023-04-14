#!/bin/bash

# Check to make sure the user has passed the correct number of arguments to the script. which is 2
if [ $# -ne 2 ]; then
    echo "Usage: backup.sh <source> <destination>"
    echo "try again"
    exit 1
fi

# check to see if rsync is installed
if ! command -v rsync &> /dev/null 2>&1;
then
    echo "rysnc could not be found, this script requires rsync to run"
    echo "please use brew to install rsync"
    exit 2
fi

# capture the current date and store in format YYYY-MM-DD
date=$(date +%Y-%m-%d)

rysnc="-avb --backup-dir $2/$date --delete" #remove --dry-run when you are ready to run the script. Or in Production.
#all options you can pass to rsync if youre running rsync manually.
#-avb is verbose, archive, and backup
#--backup-dir is the directory where the backup will be stored
#--delete is to delete files that are not in the source directory in the backup directory
#--dry-run is to test the script without actually running it. This is good to do before you run the script for the first time. it creates a simulation of what the script will do. #VERY IMPORTANT!!!!!
#--exclude is to exclude files from the backup.  You can use this to exclude files that are too large to backup or files that are not needed to be backed up.
# we have the -b so that --delete wont delete but move it into the incremental backup directory.

$(which rsync) $rysnc $1 $2/current >> backup_$date.log
