#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 <decimal_number>"
    exit 1
fi
binary=$(echo "obase=2; $1" | bc)
printf "%08d\n" "$binary"
