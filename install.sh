#!/bin/sh
sed -i -e 's/\r$//' parrot.sh
chmod +x parrot.sh
pkg update
pkg upgrade
pkg install figlet -y
pkg install toilet -y
pkg install pv -y
clear
ls
