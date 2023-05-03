#!/bin/bash

# Script Name: codechallenge7                Script Name
# Author:   rsr                   Your Name
# Date of latest revision:      05/2/23
# Purpose:Create a script that Uses lshw to display system information to the screen about the components cpu,ram,network adapter and display adapter

#Reference:Got example from chat gpt 



CPU_INFO=$(lshw -short | grep -i cpu)

CPU_PRODUCT=$(echo "$CPU_INFO" | awk '{print $3}')
CPU_VENDOR=$(echo "$CPU_INFO" | awk '{print $4}')
CPU_PHYSICAL_ID=$(echo "$CPU_INFO" | awk '{print $5}')
CPU_BUS_INFO=$(echo "$CPU_INFO" | awk '{print $6}')
CPU_WIDTH=$(echo "$CPU_INFO" | awk '{print $7}')

COMPUTER_NAME=$(hostname)

echo "CPU Product: $CPU_PRODUCT"
echo "CPU Vendor: $CPU_VENDOR"
echo "CPU Physical ID: $CPU_PHYSICAL_ID"
echo "CPU Bus Info: $CPU_BUS_INFO"
echo "CPU Width: $CPU_WIDTH"
echo "Computer Name: $COMPUTER_NAME"

sudo lshw -short -C memory | awk '/System Memory/{print $1,$2,$3,$4,$5,$6,$7}'

sudo lshw -c display | awk '/description|product|vendor|physical id|bus info|width|clock|capabilities|configuration|resources/{print}'


# Run lshw command and store output in a variable
network_info=$(sudo lshw -class network)

# Use grep command and regular expressions to filter out desired fields
description=$(echo "$network_info" | grep -E "description|product" | cut -d ":" -f 2 | sed 's/^[ \t]*//')
vendor=$(echo "$network_info" | grep -E "vendor" | cut -d ":" -f 2 | sed 's/^[ \t]*//')
physical_id=$(echo "$network_info" | grep -E "physical id" | cut -d ":" -f 2 | sed 's/^[ \t]*//')
bus_info=$(echo "$network_info" | grep -E "bus info" | cut -d ":" -f 2 | sed 's/^[ \t]*//')
width=$(echo "$network_info" | grep -E "width" | cut -d ":" -f 2 | sed 's/^[ \t]*//')
clock=$(echo "$network_info" | grep -E "clock" | cut -d ":" -f 2 | sed 's/^[ \t]*//')
capabilities=$(echo "$network_info" | grep -E "capabilities" | cut -d ":" -f 2 | sed 's/^[ \t]*//')
configuration=$(echo "$network_info" | grep -E "configuration" | cut -d ":" -f 2 | sed 's/^[ \t]*//')
resources=$(echo "$network

