#!/bin/bash
vals=(0 128 192 224 240 248 252 254 255); out=(); for i in 1 2 3 4; do if [ $1 -ge $((i*8)) ]; then out+=(255); else rem=$(($1 - (i-1)*8)); if [ $rem -gt 0 ]; then out+=(${vals[$rem]}); else out+=(0); fi; fi; done; printf "%d.%d.%d.%d\n" "${out[0]}" "${out[1]}" "${out[2]}" "${out[3]}"
