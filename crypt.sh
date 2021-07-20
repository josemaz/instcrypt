#!/bin/bash

if [ "$1" == "-e" ]; then  # encrypt
    tar cf dir.tar tester
    gpg --output no-borrar.crypt -c dir.tar
    rm -rf dir.tar tester
elif [ "$1" == "-d" ]; then    # decrypt
    gpg -d no-borrar.crypt > dir.tar 
    tar xf dir.tar 
    rm -rf dir.tar
else
    echo "Bad option"
fi
