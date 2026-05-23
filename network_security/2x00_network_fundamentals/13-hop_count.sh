#!/bin/bash
traceroute -n "$1" 2>/dev/null | grep -E '^[[:space:]]*[0-9]' | wc -l
