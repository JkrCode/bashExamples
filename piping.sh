#!/bin/bash

##piping
ls -l /usr/bin | grep bash

##writing "text ">"fileName" write to file, >> append to file
echo Hello world! from file > hello.txt
cat hello.txt

echo Hello world! from file >> hello.txt
cat hello.txt

rm hello.txt
