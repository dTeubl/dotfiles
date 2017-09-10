#!/bin/bash

# Simple script to create a simlink from each config file to ~/.* files.

BACKUP_DIR=./backup_old_configs

# Create temporary diretory for the old configuration files
mkdir -p $BACKUP_DIR

# Create a backup from every config file which will be modified
for file in *
do
    if [[ -f $file ]]; then
        echo $file

        OLD_FILE=~/.$file

        # Link the vimrc, but create a backup before
        if [ -f $OLD_FILE ]; then
            echo "There is already a vimrc @HOME!"
            if [ -L $OLD_FILE ]; then
                echo "It is also a symlink!"
                var=`ls -l $OLD_FILE | gawk '{ print $11}' | gawk '{ gsub (/[\/.]/, "");print}'`
                cp $OLD_FILE "./backup_old_configs/vimrc_old_at_$var"
            else
                cp $OLD_FILE "./backup_old_configs/vimrc_old"
            fi

            # Remove the old config file
            # rm $file
        fi
        
        # create a symbolic link to the ~/directory
        # ln -s $file $OLD_FILE
    fi
done
