#!/bin/bash

# Script:   code challenge 4                    
# Author: rsr                      
# Date of latest revision: April 28,2023     
# Purpose: write a script that:Displays running processes
#Asks the user for a PID
#Kills the process with that PID
#Starts over at step 1 and continues until the user exits with ctrl c                    

playvar=1
while [ $playvar -le 10 ]
do
    echo $playvar
    playvar=$(( $playvar +1))
    sleep 0.5
done
