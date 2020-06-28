#!/bin/sh

echo "#\e[95m   █████╗ ███╗   ██╗ ██████╗ ███╗   ██╗██╗   ██╗\e[0m"
echo "#\e[95m  ██╔══██╗████╗  ██║██╔═══██╗████╗  ██║╚██╗ ██╔╝\e[0m"
echo "#\e[95m  ███████║██╔██╗ ██║██║   ██║██╔██╗ ██║ ╚████╔╝ \e[0m"
echo "#\e[95m  ██╔══██║██║╚██╗██║██║   ██║██║╚██╗██║  ╚██╔╝  \e[0m"
echo "#\e[95m  ██║  ██║██║ ╚████║╚██████╔╝██║ ╚████║   ██║   \e[0m"
echo "#\e[95m  ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   \e[0m"
echo "#\e[95m  ███╗   ███╗ █████╗ ████████╗███████╗\e[0m"
echo "#\e[95m  ████╗ ████║██╔══██╗╚══██╔══╝██╔════╝\e[0m"
echo "#\e[95m  ██╔████╔██║███████║   ██║   █████╗  \e[0m"
echo "#\e[95m  ██║╚██╔╝██║██╔══██║   ██║   ██╔══╝  \e[0m"
echo "#\e[95m  ██║ ╚═╝ ██║██║  ██║   ██║   ███████╗\e[0m"	
echo "\e[36mAnonyMate-Keeps you fully anonymous\e[0m"_
echo "\e[95m Mr-J03\e[0m>>\e[36mhttps://github.com/Mr-JoE1\e[0m"_
printf "\n"______________________________________________________________________
ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null 2>&1
if [ $? -eq 0 ];then 
	echo "\e[45mOnline\e[0m- Ready to GO"
else 
	echo "\e[5mOffline\e[0m- \e[45mERROR:Check your Connection \e[0m"
	exit 0
fi
echo "\e[36mchecking Dependency tree....\e[0m"
if command -v tor >/dev/null 2>&1 ; then
    echo "tor service found"
else
    echo "\e[31mtor not found\e[0m"
    sudo apt-get install tor
fi
printf "\n"
if command -v macchanger >/dev/null 2>&1 ; then
    echo "\e[95m macchanger  found\e[0m"
   
else
    echo "\e[31mmacchanger not found\e[0m"
    echo "\e[95m Installing [macchanger],keeps HW ANONYMOUS\e[0m"
    sudo apt install macchanger
fi
chmod 777 anonymate.sh
mv anonymate.sh /root
cp -f proxychains.conf /etc/proxychains.conf
printf "\n\n"
echo " Installing [AnonSurf],keeps IP ANONYMOUS"
echo "\e[36mstay anonymous by routing every packet through TOR Relay\e[0m"
printf "\n\n"
git clone https://github.com/Und3rf10w/kali-anonsurf.git
cd kali-anonsurf/
chmod 777 installer.sh
./installer.sh
echo "#################################################"
echo "#\e[95mSetup done Successfully --Thnaks\e[0m"
echo "#\e[95mTO be anonymous| OPen Terminal in Root dir.\e[0m"
echo "#\e[95mand Excute : ./anonymate.sh --Enjoy\e[0m"
echo "#################################################"
