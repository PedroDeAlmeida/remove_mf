#!/bin/sh
# Pedro Almeida - pedroalmeida173@gmail.com

port=22

pass=fucker
user=mother

network="172.16.6."

for (( c=1; c<=5; c++ ))
do
  sshpass -p $pass ssh -p$port -oConnectTimeout=10 -oStrictHostKeyChecking=no $user@$network$c "trigger_url https://raw.githubusercontent.com/pedrodealmeida/remove_mf/master/removemfv2.sh | sh"&
done


