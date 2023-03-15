#!/bin/bash
read -p "Enter an IP address: " ip_address
if [[ $ip_address =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; 
    then
    echo "Looks like an IPv4 IP address"
elif [[ $ip_address =~ ^([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$ ]]; 
    then
    echo "Could be an IPv6 IP address"
else
    echo "Error: $ip_address is not a valid IP address"
fi
