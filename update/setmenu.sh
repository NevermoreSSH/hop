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
echo -e "$yy 16$y. Change XrayCore Official 1.6.5"
echo -e "$yy 17$y. Change XrayCore Official 1.7.5"
echo -e "$yy 18$y. Change XrayCore Mod by dharak36"
echo -e "$yy 19$y. Change Banner SSH Weboscket"
echo -e "$yy 20$y. FIX Error SSH+SSL/TLS After Change Port"
echo -e "$yy 21$y. Menu"
echo -e "$yy 22$y. Exit"
echo -e "$y-------------------------------------------------------------$wh"
echo -e ""
read -p "Select From Options [ 1 - 22 ] : " menu
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
mv /usr/local/bin/xray /usr/local/bin/xray.bakkk && wget -q -O /usr/local/bin/xray "https://github.com/NevermoreSSH/Xcore-custompath/releases/download/Xraycore_Official-1.65/xray.1.6.5" && chmod 755 /usr/local/bin/xray && restart
;;
17)
mv /usr/local/bin/xray /usr/local/bin/xray.bakk && wget -q -O /usr/local/bin/xray "https://github.com/NevermoreSSH/Xcore-custompath/releases/download/Xray_Official_1.7.5/xray" && chmod 755 /usr/local/bin/xray && restart
;;
18)
mv /usr/local/bin/xray /usr/local/bin/xray.bak && wget -q -O /usr/local/bin/xray "https://github.com/NevermoreSSH/Xcore-custompath/releases/download/v1.0.0/xray.linux.64bit" && chmod 755 /usr/local/bin/xray && restart
;;
19)
nano /etc/issue.net
;;
20)
fssw
;;
21)
clear
menu
;;
22)
clear
exit
;;
*)
clear
menu
;;
esac
