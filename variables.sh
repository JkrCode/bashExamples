#!/bin/bash

## definition of list
MY_FIRST_LIST=(one two three)


## prints 1. entry
echo $MY_FIRST_LIST

## prints all entries
echo ${MY_FIRST_LIST[@]}

## prints item at position 2 
echo ${MY_FIRST_LIST[1]}

## iterate over array
for item in ${MY_FIRST_LIST[@]}; do 
    echo -n $item | wc -c;
    done