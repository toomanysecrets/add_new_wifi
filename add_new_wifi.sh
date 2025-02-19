#!/bin/bash

# Ask the user for SSID, password, and priority
echo "Enter the SSID:"
read ssid

echo "Enter the password:"
read -s psk

echo "Enter the priority:"
read priority

# Create the configuration for the new network
network="network={
ssid=\"$ssid\"
psk=\"$psk\"
priority=$priority
}"

# Add the configuration to the end of the /etc/wpa_supplicant.conf file
echo "$network" >> /etc/wpa_supplicant.conf

echo "The configuration has been successfully added to /etc/wpa_supplicant.conf"
