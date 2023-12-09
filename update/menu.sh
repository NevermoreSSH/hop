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
# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*/} / ${corediilik:-1}))"
cpu_usage+=" %"
#Domain & IPVPS
domain=$(cat /etc/xray/domain)
sldomain=$(cat /root/nsdomain)
IPVPS=$(curl -s ipinfo.io/ip)
# TOTAL ACC CREATE SSH/XRAYS
ssh="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
vmess=$(grep -c -E "^### " "/etc/xray/config.json")
vless=$(grep -c -E "^#### " "/etc/xray/config.json")
tr=$(grep -c -E "^#&# " "/etc/xray/config.json")
trgo=$(grep -c -E "^### " "/etc/trojan-go/akun.conf")
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"
# RAM Info
tram=$(free -m | awk 'NR==2 {print $2}')
uram=$(free -m | awk 'NR==2 {print $3}')
# Total BANDWIDTH
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "$(date +"%b '%y")" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "$(date +"%b '%y")" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "$(date +"%b '%y")" | awk '{print $9" "substr ($10, 1, 1)}')"

echo ""
echo -e "$y                        MAIN MENU $wh"
echo -e "$y                Script Mod By NevermoreSSH $wh"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                ${WB} ♦️ Server Information ♦️ ${NC}             "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}♦️${NC} ${YB}OS      :  "$(hostnamectl | grep "Operating System" | cut -d ' ' -f5-) ${NC}         
echo -e "  ${RB}♦️${NC} ${YB}KERNEL  :  $(uname -r) ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}UPTIME  :  $uptime ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}CPULOAD :  $cpu_usage ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}RAM     :  $uram MB / $tram MB ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}DOMAIN  :  $domain ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}DNSTT   :  $sldomain ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}IPVPS   :  $IPVPS ${NC} "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                  ${WB} ♦️ Total Bandwidth ♦️ ${NC}            "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}♦️${NC} ${YB}Daily Usage         : $ttoday ${NC}"
echo -e "  ${RB}♦️${NC} ${YB}Yesterday Usage     : $tyest ${NC}"
echo -e "  ${RB}♦️${NC} ${YB}Monthly Usage       : $tmon ${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "   ${YB} SSH     VMESS     VLESS     TROJAN     TROJANGO          "
echo -e "${y}     $ssh        $vmess         $vless         $tr           $trgo         "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "$YB 1$y.  SSH WEBSOCKET MENU  $wh"
echo -e "$YB 2$y.  L2TP MENU$wh"
echo -e "$YB 3$y.  PPTP MENU$wh"
echo -e "$YB 4$y.  SSTP MENU$wh"
echo -e "$YB 5$y.  WIREGUARD MENU$wh"
echo -e "$YB 6$y.  SHADOWSOCKS MENU$wh"
echo -e "$YB 7$y.  SHADOWSOCKSR MENU$wh"
echo -e "$YB 8$y.  XRAY VMESS MENU$wh"
echo -e "$YB 9$y.  XRAY VLESS MENU$wh"
echo -e "$YB 10$y. XRAY TROJAN MENU$wh"
echo -e "$YB 11$y. TROJAN GO MENU$wh"
echo -e "$YB 12$y. INFO ALL PORT$wh"
echo -e "$YB 13$y. XRAY VERSION$wh"
echo -e "$YB 14$y. CHECK IP PORT$wh"
echo -e "$YB 15$y. CHECK SERVICE VPN$wh"
echo -e "$YB 16$y. UPDATE MENU (Update)$wh"
echo -e "$YB 17$y. FIX SSLH+WS-TLS Error after reboot$wh"
echo -e "$YB 18$y. SETTINGS$wh"
echo -e "$YB 19$y. CHECK CPU & RAM$wh"
echo -e "$YB 20$y. CHECK BANDWIDTH$wh"
echo -e "$YB 21$y. DNS CHANGER$wh"
echo -e "$YB 22$y. NETFLIX CHECKER$wh"
echo -e "$YB 23$y. DELETE EXPIRED USERS$wh"
echo -e "$YB 24$y. EXIT$wh"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "${YB}"
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
