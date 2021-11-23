SOURCEFILE=/tmp/KcsSetupTTL.sh
TARGETDIR=/home/Alogin
HOSTFILE=/home/Alogin/ip.txt

 for HOST in `cat $HOSTFILE`
  do
sshpass -f /home/Alogin/pass   scp -o StrictHostKeyChecking=no  /tmp/KcsSetupTTL.sh Alogin@$HOST:/tmp

done
