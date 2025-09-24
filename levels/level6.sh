# Script accepts filename and prints number of lines in file. If no filename is provided, message "no file provided" is displayed.

#!/bin/bash

filename () {
if [ -n "$1" ]; then
    echo "no. of lines in file: $(wc -l < "$1")"
else
    echo "no file provided"
fi
}

filename README.md
