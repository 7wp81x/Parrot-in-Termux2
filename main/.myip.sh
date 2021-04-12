#!/bin/sh
echo
ifconfig | grep broadcast | awk '{print " Here is your IP "$2}'
cd
echo
cd
