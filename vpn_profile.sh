#!/usr/bin/expect -f

set vpn_ip $env(VPN_IP)
set vpn_port $env(VPN_PORT)

spawn /opt/forticlient/fortivpn edit vpn
expect -re "Type"
send -- "1\r"
set timeout -1
expect -re "Remote Gateway:"
send -- "$VPN_IP\r"
set timeout -1
expect -re "Port"
send -- "$VPN_PORT\r"
set timeout -1
expect -re "Authentication"
send -- "3\r"
set timeout -1
expect -re "Certificate"
send -- "3\r"
set timeout -1
expect eof