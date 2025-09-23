#script copies all .txt files from arena directory to new directory called backup
#!/bin/bash

mkdir -p backup
cp arena/*.txt backup/
