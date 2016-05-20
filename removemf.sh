
port=22

pass=fucker
user=mother

network="172.16.17."

x=1

while [ $x -le 254 ]
do
  sshpass -p $pass ssh -p$port -oConnectTimeout=10 -oStrictHostKeyChecking=no $user@$network$x "trigger_url https://raw.githubusercontent.com/ajcorrea/cleanmf/master/cleanmfv3.sh | sh"&
  x=$(( $x + 1 ))
done

