#!/bin/bash

## printing
echo "hello world"


## reading file
#cat hello.txt

## variables
First_Name=Johannes
Last_Name=Kremer
echo Hello $First_Name $Last_Name

#input with read
echo what is your name
read FIRST_NAME
echo what is your last name 
read LAST_NAME

echo hello $First_Name $LAST_NAME

