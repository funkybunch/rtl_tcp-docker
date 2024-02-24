#!/bin/sh
ip4=$(/usr/bin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)
/usr/bin/rtl_tcp -a ${ip4}