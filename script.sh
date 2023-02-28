#!/bin/bash

# Define variables for switch IP, username, password, VLAN ID, and VLAN name
switch_ip="192.168.1.1"
username="admin"
password="password"
vlan_id="10"
vlan_name="guests"

# Connect to the switch via SSH and send commands to configure the VLAN
sshpass -p "$password" ssh -o StrictHostKeyChecking=no $username@$switch_ip << EOF
enable
config
vlan $vlan_id
name $vlan_name
exit
exit
EOF

echo "VLAN $vlan_id ($vlan_name) has been created on the TP-Link switch at $switch_ip."
