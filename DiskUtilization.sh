#!/bin/bash
HOST=/home/Alogin/ip.txt
for HOST in `cat $HOST`
do
echo "Connecting to $HOST"
sshpass -f /home/Alogin/pass  ssh -o StrictHostKeyChecking=no  Alogin@$HOST 'hostname && df -hT' >> disk.txt
done