#!/bin/sh
# Pedro Almeida - pedroalmeida173@gmail.com

rm /etc/persistent/mf.tar
rm -rf /etc/persistent/.mf
rm -r /etc/persistent/mcuser
rm /etc/persistent/rc.poststart
cat /etc/passwd | grep -v mcuser >> /etc/passwd2
cat /etc/passwd2 > /etc/passwd
rm /etc/passwd2
cfgmtd -w -p /etc/
killall -9 search
killall -9 mother
killall -9 sleep
reboot
