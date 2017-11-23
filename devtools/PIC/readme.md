Makefile
--------
+ Creates a build directory near the Makefile, and puts every temporary file there.
+ Also creates a hex files, which could be download directly to the right PIC device.
+ Generates map file as well
+ After a successful build it show the same summary as a build with MPLAB X

genFLEX
-------
+ Useful if you use git as a version control tool
+ If you have a configurable project, and you have different configurations in different source files, that this script could be useful
+ Generates a Zip file with different setups - configurations - of the same base source
+ Generates a readme.md file, which shows the last tag message and each commit message since that tag.


getTag
------
+ Helps to the genFLEX scpit


Prog_a_Pic
----------
+ Burn a selected firmware to a PIC controller
+ The MPLAB X IDE has to be installed
+ This path should be added to the users path: /opt/microchip/mplabx/vx,yz/mplab_ide/bin


run_conf.txt
------------
+ Holds the right input information for the mdb.sh script, like programmer device, target name and the program to download




