#!/bin/bash
ip addr show dev tun0 2>/dev/null | grep -oP '(?<=inet )\d+(\.\d+){3}'
