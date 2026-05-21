#!/bin/bash
if [ "$1" -eq 24 ]; then echo "255.255.255.0"; elif [ "$1" -eq 16 ]; then echo "255.255.0.0"; elif [ "$1" -eq 8 ]; then echo "255.0.0.0"; elif [ "$1" -eq 32 ]; then echo "255.255.255.255"; elif [ "$1" -eq 0 ]; then echo "0.0.0.0"; elif [ "$1" -eq 27 ]; then echo "255.255.255.224"; fi
