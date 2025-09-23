#Script checks if hero.txt file exists in arena directory

#!/bin/bash

if [ -f "/root/arena/hero.txt" ]
then
    echo "Hero found!"
else 
    echo "Hero missing!"
fi
