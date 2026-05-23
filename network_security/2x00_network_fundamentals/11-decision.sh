№!/bin/bash
if [ -z "$1" ]; then
    echo "İstifadə qaydası: $0 <IP_ADDRESS>"
    exit 1
fi
if ip route get "$1" 2>/dev/null | grep -q "via"; then
    echo "REMOTE"
else
    echo "LOCAL"
fi
