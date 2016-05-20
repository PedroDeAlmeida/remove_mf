
rm mf.tar
rm -rf .mf
rm -r mcuser
rm rc.poststart

cat /etc/passwd | grep -v mcuser >> /etc/passwd2
cat /etc/passwd2 >> /etc/passwd
rm /etc/passwd2

cfgmtd -w -p /etc/

killall -9 search
killall -9 mother
killall -9 sleep

versao=`cat /etc/version | cut -d'.' -f1`

cd /tmp
rm -rf /tmp/X*.bin

if [ "$versao" == "XM" ]; then
        URL='http://dl.ubnt.com/firmwares/XN-fw/v5.6.5/XM.v5.6.5.29033.160515.2119.bin'
        wget -c $URL
        ubntbox fwupdate.real -m /tmp/XM.v5.6.5.29033.160515.2119.bin
else
        URL='http://dl.ubnt.com/firmwares/XW-fw/v5.6.5/XW.v5.6.5.29033.160515.2108.bin'
        wget -c $URL
        ubntbox fwupdate.real -m /tmp/XW.v5.6.5.29033.160515.2108.bin
fi

reboot
