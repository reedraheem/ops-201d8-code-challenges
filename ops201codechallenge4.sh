#!/bin/bash

# Script:   code challenge 4                    
# Author: rsr                      
# Date of latest revision: April 28,2023     
# Purpose: write a script that:Displays running processes
#Asks the user for a PID
#Kills the process with that PID
#Starts over at step 1 and continues until the user exits with ctrl c                    

#Reference: got this script from chatgpt

# Display running processes
echo "Running processes:"
ps -e

# Ask the user for a PID
echo "Enter PID to kill:"
read pid

# Kill the process with the specified PID
if [ -z "$pid" ]; then
  echo "No PID entered. Exiting."
  exit 1
else
  kill "$pid"
fi
