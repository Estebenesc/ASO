#!bin/bash

bytes_a_gb() {
    
    echo "scale=2; $1 / 1073741824" | bc
 
}

bytes_a_gb "$1"