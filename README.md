# SwitchWizard
A bash script that automates the deployment of a VLAN on a TP-Link switch 


In this script, we use the sshpass command to provide the switch's login password, and then use SSH to connect to the switch using the specified username and IP address. We then use a here-document to send a series of commands to configure the VLAN, including enabling configuration mode, creating the VLAN with the specified ID and name, and exiting configuration mode. Finally, we print a message to confirm that the VLAN has been created.

Note that this script assumes that SSH is enabled on the TP-Link switch and that the specified username and password have administrative privileges to access and configure the switch. Additionally, it's important to properly secure the password in your script or use a different authentication method such as public key authentication.
