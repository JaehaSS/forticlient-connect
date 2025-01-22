# #!/usr/bin/expect -f 
# spawn /opt/forticlient/fortivpn edit vpn
# expect -re "Type"
# send -- "1\r"
# set timeout -1
# expect -re "Remote Gateway:"
# send -- "$vpn_ip \r"
# set timeout -1
# expect -re "Port"
# send -- "$vpn_port \r"
# set timeout -1
# expect -re "Authentication"
# send -- "3\r"
# set timeout -1
# expect -re "Certificate"
# send -- "3\r"
# set timeout -1


#!/bin/bash


echo "Hello!! $vpn_ip"
echo "Vpn_port : $vpn_port"
