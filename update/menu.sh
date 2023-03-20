#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                  MAIN MENU $wh"
echo -e "$y            Script Mod By NevermoreSSH $wh"
echo -e "$y-------------------------------------------------$wh"
echo -e "$yy 1$y.  SSH & OpenVPN MENU  $wh"
echo -e "$yy 2$y.  L2TP MENU$wh"
echo -e "$yy 3$y.  PPTP MENU$wh"
echo -e "$yy 4$y.  SSTP MENU$wh"
echo -e "$yy 5$y.  WIREGUARD MENU$wh"
echo -e "$yy 6$y.  SHADOWSOCKS MENU$wh"
echo -e "$yy 7$y.  SHADOWSOCKSR MENU$wh"
echo -e "$yy 8$y.  XRAY VMESS MENU$wh"
echo -e "$yy 9$y.  XRAY VLESS MENU$wh"
echo -e "$yy 10$y. XRAY TROJAN MENU$wh"
echo -e "$yy 11$y. TROJAN GO MENU$wh"
echo -e "$yy 12$y. XRAY GRPC MENU$wh"
echo -e "$yy 13$y. XRAY VERSION$wh"
echo -e "$yy 14$y. CHECK IP PORT$wh"
echo -e "$yy 15$y. CHECK SERVICE VPN$wh"
echo -e "$yy 16$y. UPDATE MENU (Update)$wh"
echo -e "$yy 17$y. sl-fix (Fix SSLH+WS-TLS Error after reboot)$wh"
echo -e "$yy 18$y. SETTINGS$wh"
echo -e "$yy 19$y. CHECK CPU & RAM$wh"
echo -e "$yy 20$y. CHECK BANDWIDTH$wh"
echo -e "$yy 21$y. DNS CHANGER$wh"
echo -e "$yy 22$y. NETFLIX CHECKER$wh"
echo -e "$yy 23$y. SET AUTOREBOOT$wh"
echo -e "$yy 24$y. EXIT$wh"
echo -e "$y-------------------------------------------------$wh"
read -p "Select From Options [ 1 - 22 ] : " menu
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
l2tpmenu
;;
3)
clear
pptpmenu
;;
4)
clear
sstpmenu
;;
5)
clear
wgmenu
;;
6)
clear
ssmenu
;;
7)
clear
ssrmenu
;;
8)
clear
vmessmenu
;;
9)
clear
vlessmenu
;;
10)
clear
trmenu
;;
11)
clear
trgomenu
;;
12)
clear
grpcmenu
;;
13)
clear
xray version
;;
14)
clear
ipsaya
;;
15)
clear
running
;;
16)
clear
updatemenu
;;
17)
clear
sl-fix
;;
18)
clear
setmenu
;;
24)
clear
exit
;;
20)
clear
vnstat
;;
21)
clear
dns
;;
22)
clear
netf
;;
23)
clear
autoreboot
;;
19)
clear
htop
;;
*)
clear
menu
;;
esac
