#! /bin/bash
sudo ip address add 1.2.3.4/32 dev lo label lo:1
sudo ip route add 224.0.0.0/4 dev lo:1
dvblast -f 498000000 -c itv_list -m QAM_64 -b 8 -G 32 &
udpxy -p 8080 &