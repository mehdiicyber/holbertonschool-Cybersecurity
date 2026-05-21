#!/bin/bash
printf "%08d.%08d.%08d.%08d\n" $(echo "obase=2; 2^32 - 2^(32-$1)" | bc | tr '01' '10') | tr '.' ' ' | while read -r a b c d; do echo "$((2#$a)).$((2#$b)).$((2#$c)).$((2#$d))"; done
