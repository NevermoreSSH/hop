#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
## Foreground
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'
#Domain & IPVPS
domain=$(cat /etc/xray/domain)
sldomain=$(cat /root/nsdomain)
IPVPS=$(curl -s ipinfo.io/ip)
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"
# RAM Info
tram=$(free -m | awk 'NR==2 {print $2}')
uram=$(free -m | awk 'NR==2 {print $3}')
# Total BANDWIDTH
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "$(date +"%b '%y")" | awk '{print $9" "substr ($10, 1, 1)}')"
echo ""
echo -e "$y                        MAIN MENU $wh"
echo -e "$y                Script Mod By NevermoreSSH $wh"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                ${WB} ♦️ ️Server Information ♦️ ${NC}             "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}♦️${NC} ${YB}OS      :  "$(hostnamectl | grep "Operating System" | cut -d ' ' -f5-) ${NC}         
echo -e "  ${RB}♦️${NC} ${YB}KERNEL  :  $(uname -r) ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}UPTIME  :  $uptime ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}RAM     :  $uram MB / $tram MB ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}DOMAIN  :  $domain ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}DNS     :  $sldomain ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}IPVPS   :  $IPVPS ${NC} "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                  ${WB} ♦️ ️Total Bandwidth ♦️ ${NC}            "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}♦️${NC} ${YB}Daily Data Usage    : $ttoday ${NC}"
echo -e "  ${RB}♦️${NC} ${YB}Monthly Data Usage  : $tmon ${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                     ${WB} ♦️ VPS Menu ♦️ ${NC}             "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
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
echo -e "$yy 12$y. INFO ALL PORT$wh"
echo -e "$yy 13$y. XRAY VERSION$wh"
echo -e "$yy 14$y. CHECK IP PORT$wh"
echo -e "$yy 15$y. CHECK SERVICE VPN$wh"
echo -e "$yy 16$y. UPDATE MENU (Update)$wh"
echo -e "$yy 17$y. FIX SSLH+WS-TLS Error after reboot$wh"
echo -e "$yy 18$y. SETTINGS$wh"
echo -e "$yy 19$y. CHECK CPU & RAM$wh"
echo -e "$yy 20$y. CHECK BANDWIDTH$wh"
echo -e "$yy 21$y. DNS CHANGER$wh"
echo -e "$yy 22$y. NETFLIX CHECKER$wh"
echo -e "$yy 23$y. DELETE EXPIRED USERS$wh"
echo -e "$yy 24$y. EXIT$wh"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
read -p "Select From Options [ 1 - 24 ] : " menu
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
info
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
delexp && xp && restart
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
