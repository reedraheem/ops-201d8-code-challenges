#!/bin/bash

# Script Name: codechallenge7                Script Name
# Author:   rsr                   Your Name
# Date of latest revision:      05/2/23
# Purpose:Create a script that Uses lshw to display system information to the screen about the components cpu,ram,network adapter and display adapter

#Reference:Got example from chat gpt 

echo "CPU Information:"
lshw -short | grep processor
echo ""
echo "RAM Information:"
lshw -short | grep memory
echo ""
echo "Network Adapter Information:"
lshw -short | grep network
echo ""
echo "Display Adapter Information:"
lshw -short | grep display
