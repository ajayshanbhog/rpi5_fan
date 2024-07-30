#!/bin/bash

while true;
do
    echo "4" > /sys/class/thermal/cooling_device0/cur_state
    sleep 0.01; 
done
