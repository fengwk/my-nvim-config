#!/bin/bash

if [ ! -f '/tmp/.im' ]; then
    im='1033'
else
    im=$(cat /tmp/.im)
fi

echo $im
im-select.exe $im
