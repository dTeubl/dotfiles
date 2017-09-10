#!/bin/bash

# Simple script to create a simlink from each config file to ~/.* files.

BACKUP_DIR=./backup_old_configs

# Create temporary diretory for the old configuration files
mkdir -p $BACKUP_DIR

# change directory to get better file names
OLD_PATH=$PWD
cd ./conf_files

# Create a backup from every config file which will be modified
for file in *
do
    if [[ -f $file ]]; then
        OLD_FILE=~/.$file

        # echo $OLD_FILE
        # Create a backup file from the already existing file
        if [ -f $OLD_FILE ]; then
            echo "There is already a $file @HOME! Creating Backup..."
            if [ -L $OLD_FILE ]; then
                # echo "It is also a symlink!"
                var=`ls -l $OLD_FILE | gawk '{ print $11}' | gawk '{ gsub (/[\/.]/, "_");print}'`
                # echo $var
                cp $OLD_FILE "$OLD_PATH/backup_old_configs/old_$file$var"
            else
                cp $OLD_FILE "$OLD_PATH/backup_old_configs/old_$file"
            fi
        fi
        
        # Remove the old file
        rm $OLD_FILE

        # create a symbolic link to the ~/directory
        ln -s $OLD_PATH/conf_files/$file $OLD_FILE
    fi
    echo 
done

# Jump back to the start directory
cd $OLD_PATH

