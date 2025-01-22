#!/usr/bin/expect -f 
spawn echo "Hello $env(vpn_ip) , Hello! $env(vpn_port)"
