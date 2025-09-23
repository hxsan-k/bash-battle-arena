#!/bin/bash

mkdir -p battlefield; cd battlefield

touch knight.txt sorcerer.txt rogue.txt

cd ..

if [ -f battlefield/knight.txt ]; then
    mkdir -p archive
    mv battlefield/knight.txt archive/
fi

echo "Battlefield contents: $(ls battlefield)"
echo "Archive contents: $(ls archive)"
