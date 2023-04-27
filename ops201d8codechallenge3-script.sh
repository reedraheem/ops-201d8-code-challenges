#!/bin/bash

# Script:  code challenge 3                     
# Author:   rsr                    
# Date of latest revision: April 27,2023     
# Purpose:Write a script that creates four directories: dir1, dir2, dir3, dir4,
# put the names of the four directories in an array
# References the array variable to create a new .txt file in each directory
                     

# Declare global variables
mkdir dir1
mkdir dir2
mkdir dir3
mkdir dir4
dirArray=("dir1" "dir2" "dir3" "dir4")

# Declare functions
createtextfile(){
touch new.txt
}


# Main
cd ${dirArray[0]}
createtextfile
cd ..

cd ${dirArray[1]}
createtextfile
cd ..

cd ${dirArray[2]}
createtextfile
cd ..

cd ${dirArray[3]}
createtextfile
cd ..
