#!/bin/bash
printf "%08d.%08d.%08d.%08d\n" $(echo "obase=2; $(echo "$1" | tr '.' ' ')" | bc)
