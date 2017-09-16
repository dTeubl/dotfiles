#!/bin/bash

# Script to simlink the different theme files to its original place.
echo $PWD
cd ./color_theme
echo $PWD

cp -v ./console_custom.vim /usr/share/vim/vim80/colors/console_custom.vim
