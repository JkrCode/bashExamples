#!/bin/bash

outer=$1
functionTest(){
    local inner=$1 
    echo $outer
    echo $inner
}
functionTest "$2"