#!/bin/bash

EINSTEIN=$(which einstein)

read -ep "Enter the file extension of the files to upload (.sh/.py/.c): " EXT

for file in ./*.$EXT
do
   $EINSTEIN $file
   sleep 1
done
