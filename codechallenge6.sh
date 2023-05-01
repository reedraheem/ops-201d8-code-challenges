#!/bin/bash

#Reference: got example from chatgpt and put my own spin on it.

# Define a variable with the file or directory name
fly_or_guy="guy.txt"

# Check if the file or directory exists
if [ -e "$fly_or_guy" ]; then
  echo "$fly_or_guy already exists"
else
  # If it doesn't exist, create it
  touch "$fly_or_guy"
  echo "$fly_or_guy created"
fi

# Define an array of animes
animes=("berserk" "naruto" "inuyasha" "hajime no ippo")

# Loop through the array
for anime in "${animes[@]}"; do
  # Check if the anime is "inuyasha"
  if [ "$anime" == "inuyasha" ]; then
    echo " This is  inuyasha!"
  else
    echo "I found a $anime"
  fi
done






