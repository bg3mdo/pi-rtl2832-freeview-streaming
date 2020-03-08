RTL-SDR Dangle Raspberry Pi Streaming Service

-Location data for scan uk_Cambridge @ https://ukfree.tv/transmitters/tv/Sandy_Heathd

scan uk_Cambridge

-Save scan data to conf file 

scan uk_Cambridge > channels.conf
 
-Udp proxy 
http://www.udpxy.com/download/udpxy/udpxy-src.tar.gz
tar zvf ...
make install 

-Start multicast service

dvblast -f 594000000 -c config_multicast -m QAM_64 -b 8 -G 32

-File Config_multicast (program pid profile from the MUX frequency)
239.1.1.11:20000 1 22080 #Sky News
239.1.1.12:20000 1 pid #Name 
...
...

If you network is not good at multicast packages

-Proxy UDP to tcp

udpxy -p 8080

-Loop back multicast

sudo ip address add 1.2.3.4/32 dev lo label lo:1
sudo ip route add 224.0.0.0/4 dev lo:1

- Address of use
UDP: rtp://239.1.1.11:20000    --Multicast
TCP: http://192.168.50.247:8080/udp/239.1.1.11:20000  --Unicast