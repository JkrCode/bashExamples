#!/bin/bash

## test structure return value for true is 0 "without issues"
[ hello = hello ]

## untrue, return code 1
[ 1 = 0 ]