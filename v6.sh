#!/bin/sh

ifconfig | grep inet | grep global > /dev/null

if [ $? -eq 0 ]; then
    echo 'v6'
else
    echo 'no v6'
fi
