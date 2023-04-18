#!/bin/bash
RED='\033[0;31m'
GREEN='\033[1;32m'
NC='\033[0m'
YELLOW='\033[0;33m' 
PURPLE='\033[1;35m' 
os=$(lsb_release -is)
version=$(lsb_release -rs)

clear
echo -e "${GREEN}#####################################"
echo -e "${GREEN}"
echo -e "${GREEN}           Run Pufferpanel Menu"
echo -e "${GREEN}         Running on $os $version"
echo -e "${GREEN}"
echo -e "${GREEN}#####################################"
echo -e ""
echo -e "${GREEN}[1] Run PufferPanel"
echo -e "${GREEN}[2] Exit"
echo "Enter your choise [1/2] "; read 
case $REPLY in
1)
cd etc/pufferpanel
pufferpanel run
;;

2)
echo "Exiting..."
exit
esac
;;
