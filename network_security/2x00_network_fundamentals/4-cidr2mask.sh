#!/bin/bash
printf "%032d\n" $(echo "obase=2; 2^32 - 2^(32-$1)" | bc | tr '01' '10') | sed 's/.\{8\}/& /g' | while read -r a b c d; do echo "$((2#$a)).$((2#$b)).$((2#$c)).$((2#$d))"; done | sed 's/255/255/g'
