#!/bin/bash

# Emon-Termux-HackKit - Beginner Hacking Toolkit for Termux
# Author: Emon

clear
echo -e "\e[1;32m"
figlet -f slant "Emon HackKit" | lolcat

while true; do
  echo -e "\n\e[1;33mChoose a tool:"
  echo "1. Nmap Scanner"
  echo "2. SQLMap Tester"
  echo "3. Hydra Brute Force (demo)"
  echo "4. Whois Lookup"
  echo "5. DNS Map"
  echo "6. Matrix Animation"
  echo "0. Exit"
  read -p ">> " opt

  case $opt in
    1)
      pkg install nmap -y
      read -p "Enter IP or Domain: " target
      nmap $target
      ;;
    2)
      pkg install python -y
      pkg install sqlmap -y
      sqlmap
      ;;
    3)
      pkg install hydra -y
      echo "Hydra installed. Run manually like:"
      echo "hydra -l user -P passlist.txt ftp://target"
      ;;
    4)
      pkg install whois -y
      read -p "Enter domain: " domain
      whois $domain
      ;;
    5)
      pkg install dnsutils -y
      read -p "Enter domain: " domain
      nslookup $domain
      ;;
    6)
      pkg install cmatrix -y
      cmatrix
      ;;
    0)
      echo "Goodbye!"
      exit
      ;;
    *)
      echo "Invalid option"
      ;;
  esac
done
