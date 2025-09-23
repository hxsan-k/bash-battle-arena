# Creates "battlefield" directory and 3 text files inside
# It then checks if knight.txt exists and moves to a new directory called "archive"
# Finally, both directories contents are listed

#!/bin/bash

mkdir -p battlefield; cd battlefield

touch knight.txt sorcerer.txt rogue.txt

cd ..

if [ -f battlefield/knight.txt ]; then
    mkdir -p archive
    mv battlefield/knight.txt archive/
else
    echo "knight.txt not found."
fi

echo "Battlefield contents: $(ls battlefield)"
echo "Archive contents: $(ls archive)"
