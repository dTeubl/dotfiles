#!/bin/python3.8

import sys
import subprocess

#print("Try to get a screen brightness\n")

bashCommand = "xrandr -q --verbose | grep -i bright"
setbright = "xrandr --output eDP-1 --brightness"

output = subprocess.check_output(bashCommand,shell=True)

#print(output)

ss = output.split()


# print(ss)
# print(ss[-1])

old_val = (float(ss[-1]))
cmd = []

# print(old_val)

# print(sys.argv[0])

if len(sys.argv) <2:
    #print("Not enough input arguments")
    exit()


if str(sys.argv[1]) == "up" or str(sys.argv[1]) == "down":
    if str(sys.argv[1]) == "up":
        new_val = old_val + 0.05
        # print("increaseing value")


    if str(sys.argv[1]) == "down":
        new_val = old_val - 0.05
        # print("decreaseing value")
        


    cmd = setbright + " " + str(new_val)
    #print(cmd)
    ret = subprocess.call(cmd,shell=True)
    #print(ret)



