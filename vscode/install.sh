#!/bin/bash

while read EXTENSION
do
    echo "Installing ${EXTENSION}..."
    code --install-extension ${EXTENSION}
done < ./extensions.txt
