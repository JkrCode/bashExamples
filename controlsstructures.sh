#!/bin/bash

if [ ${1,,} = johanneskremer ]; then
    echo "oh, you're the boss here"
elif [ ${1,,} = help ]; then
    echo "enter username"
else 
    echo "i dont know you"
fi  

