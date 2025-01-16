#!/bin/bash

case ${1,,} in 
    hannes | administrator)
        echo "hello, admin"
        ;;
    help)
        echo "bla"
        ;;
    *)
        echo "asdabsd"
esac
