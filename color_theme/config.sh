#!/bin/bash

# Script to simlink the different theme files to its original place.
echo $PWD
cd ./color_theme
echo $PWD

cp -v ./console_custom.vim /usr/local/share/vim/vim80/colors/console_custom.vim

# Also note that you should change the following line in the original airline dark theme:
# 
# Simply change the 35-th line to the followign one:
# let s:N3   = [ '#9cffd3' , '#202020' , 85  , 235 ]



