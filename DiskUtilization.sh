#!/bin/bash
HOST=/home/Alogin/ip.txt
for HOST in `cat $HOST`
do
echo "Connecting to $HOST"
sshpass -f /home/Alogin/pass  ssh -o StrictHostKeyChecking=no  Alogin@$HOST "sudo find / -name 'log4j*'" >> output123.txt
done