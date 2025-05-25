#!/bin/bash
#
# A simple wrapp around a few programs, which can be used 
# to give user a warning if a pre-allocated time is elapsed
# withouth further action. 
#
# Intended to be used during code traning and other coding
# sessions to force out frequent commint from the user
#
# It will accepts the same arguments as a normal sleep function
#
# Create a 'post-commit' file in '.git/hooks' and call this script
# there as follows:
#
# time_is_up.sh ns& or ../../scripts/time_is_up.sh ns&
#
# Either add the script the global path, or call it via relative path

if [[ $# -eq 0 ]] ; then
    echo "To delay message, use the same argument as for 'sleep'."
    exit 1
fi

sleep $1 
notify-send $notif_args "Too Slow!!"  "Your git staging area is restored.\nDo better next time!"

espeak "Commig faster or take a break!" &>/dev/null&

if zenity --title="Too Slow!" --ellipsize --question --text="Your git staging area will be restored.\nDo better next time!" ; then
    git restore .
    exit 0
fi


