#!/bin/bash
#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                   SYSTEM SETTING$wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y.  Add Or Change Subdomain Host For VPS"
echo -e "$yy 2$y.  Change Port Of Some Service"
echo -e "$yy 3$y.  Autobackup Data VPS"
echo -e "$yy 4$y.  Backup Data VPS"
echo -e "$yy 5$y.  Restore Data VPS"
echo -e "$yy 6$y.  Webmin Menu"
echo -e "$yy 7$y.  Limit Bandwith Speed Server"
echo -e "$yy 8$y.  Check Usage of VPS Ram"
echo -e "$yy 9$y.  Reboot VPS"
echo -e "$yy 10$y. Speedtest VPS"
echo -e "$yy 11$y. Restart Service VPN"
echo -e "$yy 12$y. Info Script Auto Install"
echo -e "$yy 13$y. Renew Certificate XRAYS"
echo -e "$yy 14$y. Renew Certificate NameServer(NS)"
echo -e "$yy 15$y. Install BBRPLUS 5.15.96 by UJX6N "
echo -e "$yy 16$y. Xray-core Changer "
echo -e "$yy 17$y. Change Banner SSH Weboscket"
echo -e "$yy 18$y. Restore SSH+SSL/TLS Port 443"
echo -e "$yy 19$y. SwapRAM Menu "
echo -e "$yy 20$y. Menu"
echo -e "$y-------------------------------------------------------------$wh"
echo -e ""
read -p "Select From Options [ 1 - 20 ] : " menu
echo -e ""
case $menu in
1)
addhost
;;
2)
changeport
;;
3)
autobackup
;;
4)
backup
;;
5)
restore
;;
6)
wbmn
;;
7)
limitspeed
;;
8)
ram
;;
9)
reboot
;;
10)
speedtest
;;
11)
restart
;;
12)
about
;;
13)
certv2ray && restart
;;
14)
install-sldns && restart
;;
15)
bbr2 && reboot
;;
16)
wget -q -O /usr/bin/xraychanger "https://raw.githubusercontent.com/NevermoreSSH/Xcore-custompath/main/xraychanger.sh" && chmod +x /usr/bin/xraychanger && xraychanger
;;
17)
nano /etc/issue.net
;;
18)
fssw
;;
19)
clear
wget -q -O /usr/bin/swapram "https://raw.githubusercontent.com/NevermoreSSH/swapram/main/swapram.sh" && chmod +x /usr/bin/swapram && swapram
;;
20)
clear
menu
;;
*)
clear
menu
;;
esac
