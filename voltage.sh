#!/bin/bash
datum=$(date '+%Y-%m-%d %H:%M:%S')
vol=$(i2cget -y 1 0x08 1)
vol=$(printf "%d" $vol)
vol2=$(i2cget -y 1 0x08 2)
vol2=$(printf "%d" $vol2)
echo $datum "," $vol $vol2 "V" >> /home/pi/BirdNetPrien/log_V.txt

