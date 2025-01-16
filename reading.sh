#!/bin/bash

## returns number + filename
wc -w hello.txt

## returns only number 
wc -w < hello.txt

## cat << EOF 
## ends taking input after shell sees EOF

## <<<

wc -W <<< "hello to wordcount"
## returns 3, as 3 words are passed to wordcount as string with double quotes

