#!/bin/bash

#Using the at command, check which at; to see if at is installed.
#at is a command that allows you to schedule a command to run at a later time.
#atq is a command that allows you to see what jobs are scheduled to run.
#atrm is a command that allows you to remove a job from the queue.
Date=9:40

./data_streams.sh | at $Date #this will run the data_streams.sh script at 10:00 tomorrow. copy to your command line to see it in action.

