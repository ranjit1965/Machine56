#!/bin/bash

echo "[TASK 1] Join node to Kubernetes Cluster"
apt install -qq -y sshpass >/dev/null 2>&1
sshpass -p "admin" scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no 192.168.56.110:/joincluster.sh /joincluster.sh 2>/dev/null
bash /joincluster.sh >/dev/null 2>&1