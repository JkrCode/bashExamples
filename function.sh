#!/bin/bash

showuptime(){
    local up=$(uptime -p | cut -c4-)
    local since=$(uptime -s)
    cat << EOF 
-----
This mashine has been up for ${up}
since ${since}
-----
EOF
}
showuptime

## carefull variables are globally available, make local variables inside function to not overwrite 
