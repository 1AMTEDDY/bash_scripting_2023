#!/bin/bash
#using cronjobs
#cronjobs are a way to schedule a command to run at a later time.
#crontab -e is a command that allows you to edit your cronjobs.
#crontab -l is a command that allows you to list your cronjobs.
#crontab -r is a command that allows you to remove your cronjobs.
#crontab -u is a command that allows you to edit another users cronjobs.

crontab_options="-e"

$(which crontab) $crontab_options
