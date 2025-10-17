#!/bin/bash
# Script accepts filename and prints number of lines in file. 
# Also handles 2 other scenarios where the file doesn't exist or no file name is provided by the user.

echo "please enter a file name"
read FILE

if [ -z "$FILE" ]
then
  echo "no file provided"

elif [ -e "$FILE" ]
then
  echo "there are $(wc -l < "$FILE") lines in this file"

else
  echo "file does not exist"

fi
