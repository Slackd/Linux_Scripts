#!/bin/bash

sudo dnf update -y

# Basic check for username
read -p "Please enter your user name: " username

# Sec Lab disabled by default as this has too many packages which are not needed.
# Need to hand select the packages later

# sudo dnf group install "Security Lab" -y
# sudo dnf remove security-menus -y

sudo dnf install hydra hydra-frontend gobuster hashcat scalpel foremost steghide whois aircrack-ng traceroute wireshark nmap -y

mkdir -p /home/$username/SecTools
mkdir -p /home/$username/SecTools/wordlists

wget -c https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt
git clone https://github.com/danielmiessler/SecLists.git

mv rockyou.txt /home/$username/SecTools/wordlists
mv SecLists /home/$username/SecTools/wordlists

# John the Ripper
# Compile process is long, better refer to - https://github.com/openwall/john/blob/bleeding-jumbo/doc/INSTALL-FEDORA

# Clear Screen Output
sleep 5
clear
