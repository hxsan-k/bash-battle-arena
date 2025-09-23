#This script was written on a Killercoda environment, where ~ = /root

#Script creates a directory named Arena and then inside it, creates three files: 
#warrior.txt, mage.txt, and archer.txt
#It then lists the contents of the directory.

#!/bin/bash

mkdir Arena; cd Arena
touch warrior.txt mage.txt archer.txt
ls
