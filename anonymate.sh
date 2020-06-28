#!/bin/sh
echo  "\e[95m ##  #  #   ##   #  # #   # #   #  ##  ##### #### \e[0m"
echo  "\e[95m ##  ## #  #  #  ## # #   # ## ##  ##    #   #    \e[0m"
echo  "\e[95m#  # ## # #    # ## #  # #  ## ## #  #   #   #    \e[0m"
echo  "\e[95m#  # # ## #    # # ##   #   # # # #  #   #   ###  \e[0m"
echo  "\e[95m#### # ## #    # # ##   #   # # # ####   #   #    \e[0m"
echo  "\e[95m#  # #  #  #  #  #  #   #   #   # #  #   #   #    \e[0m"
echo  "\e[95m#  # #  #   ##   #  #   #   #   # #  #   #   #### \e[0m"
echo "\e[36mAnonyMate-Keeps you fully anonymous\e[0m"_
echo "\e[95m Mr-J03\e[0m>>\e[36mhttps://github.com/Mr-JoE1\e[0m"_
printf "\n\n"
echo ">>>> hello \e[45m"$USER"\e[0m"
printf "\n"
echo "\e[36mFear gives intelligence even to F00LS! -Anonymous\e[0m"
printf "\n"
ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null 2>&1
if [ $? -eq 0 ];then 
	echo "\e[45mOnline\e[0m- But NOT anonymous"
else 
	echo "\e[5mOffline\e[0m- \e[45mERROR:Check your Connection \e[0m"
	exit 0
fi
#Get your Real IP 
myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo  "\e[95mReal WAN/Public IP address:\e[0m \e[32m${myip}\e[0m"
printf "\n"
a=`ip route | grep default | sed -e "s/^.*dev.//" -e "s/.proto.*//"`
sudo macchanger -s $a 
echo "\e[95mYour interface device is :\e[0m $a"
echo "\e[33mWARNING:\e[0m \e[31mWe disabled Macchanger because it kills connection on VM\e[0m"
echo "\e[34mRecommanded:\e[0m\e[31mFix:>> https://unix.stackexchange.com/a/371573\e[0m"
printf "\n"
anonsurf start
sleep 1
myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo "\e[95mFAKE WAN/Public IP address: \e[0m \e[32m${myip}\e[0m"
printf "\n"
echo "e[31mSarting Level 3 Connection for Browsing-- \e[0m"
firefox  https://www.dnsleaktest.com 
printf "\n"
echo "#################################################"
echo "#\e[95mAll your Connection are Fully Anonymous --Enjoy\e[0m#"
echo "#################################################"
printf "\n"
echo "\e[31mMore Privacy:\e[0mrun [proxychains firefox www.dnsleaktest.com]"
echo "\e[33mWARNING:\e[0m This may interrupt Anonsurf and Kill connection "
echo "\e[34mRecommanded:\e[0m [run anonsurf stop] \e[34mfirst \e[0m"



