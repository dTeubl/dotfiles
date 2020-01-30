#!/bin/python


import sys
import subprocess

print("Try to Change the output volume")
# Basic commands and variables


bt_request = "pactl list | grep -m 1 -i bluez_sink"
cmd_base = "pactl set-sink-volume "
cmd_mute = "pactl set-sink-mute "
bt_sink = "bluez_sink.2C_41_A1_FD_19_4D.a2dp_sink"
ananlog_sink = "alsa_output.pci-0000_00_1f.3.analog-stereo"
tog =" toggle"

bt_on=False
try:
    output = subprocess.check_output(bt_request,shell=True)
except:
    output =[]

if 0!=len(output):
    bt_on=True

# print(bt_on)


# Choose the active sink -- assuming the BT sink is always active if on.
sink = []
if bt_on:
    sink = bt_sink
else:
    sink = ananlog_sink

# based on input
# up changes 5% up
# down changes 5% down
if len(sys.argv) <2:
    #print("Not enough input arguments")
    exit()


cmd = []
if str(sys.argv[1]) == "mute":

    cmd = cmd_mute + sink + tog
    #print(cmd)
    ret = subprocess.call(cmd,shell=True)



if str(sys.argv[1]) == "up" or str(sys.argv[1]) == "down":
    if str(sys.argv[1]) == "up":
        new_val = " +5%"
        # print("increaseing value")


    if str(sys.argv[1]) == "down":
        new_val = " -5%"
        # print("decreaseing value")
        
   
    cmd = cmd_base + sink + new_val
    #print(cmd)
    ret = subprocess.call(cmd,shell=True)



