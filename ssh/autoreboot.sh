#wget https://github.com/${GitUser}/
GitUser="NevermoreSSH"
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)

# PROVIDED
creditt=$(cat /root/provided)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR ON TOP
text=$(cat /etc/text)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
clear
if [ ! -e /usr/local/bin/reboot ]; then
echo '#!/bin/bash' > /usr/local/bin/reboot 
echo 'tanggal=$(date +"%m-%d-%Y")' >> /usr/local/bin/reboot 
echo 'waktu=$(date +"%T")' >> /usr/local/bin/reboot 
echo 'echo "Server successfully rebooted on the date of $tanggal hit $waktu]" >> /root/log-reboot]txt' >> /usr/local/bin/reboot 
echo '/sbin/shutdown -r now' >> /usr/local/bin/reboot 
chmod +x /usr/local/bin/reboot
fi

# Auto Reboot
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info1="Auto Reboot set every 1 hour ${Green_font_prefix}[ON]${Font_color_suffix}"
Info2="Auto Reboot set every 6 hour ${Green_font_prefix}[ON]${Font_color_suffix}"
Info3="Auto Reboot set every 12 hours ${Green_font_prefix}[ON]${Font_color_suffix}"
Info4="Auto Reboot set every 1 day ${Green_font_prefix}[ON]${Font_color_suffix}"
Info5="Auto Reboot set every 1 week ${Green_font_prefix}[ON]${Font_color_suffix}"
Info6="Auto Reboot set every 1 month ${Green_font_prefix}[ON]${Font_color_suffix}"
Info7="Auto Reboot set Every 00]00A]M ${Green_font_prefix}[ON]${Font_color_suffix}"
Info8="Auto Reboot set Every 2]00A]M ${Green_font_prefix}[ON]${Font_color_suffix}"
Info9="Auto Reboot set Every 4]00A]M ${Green_font_prefix}[ON]${Font_color_suffix}"
Error="Auto Reboot Server ${Red_font_prefix}[OFF]${Font_color_suffix}"
cek=$(cat /home/autoreboot)
function every_an_hour () {
rm -f /etc/cron.d/reboot
echo "59 * * * * root /sbin/reboot" > /etc/cron.d/reboot
echo "start1" > /home/autoreboot
echo -e "Auto-Reboot has been set every an hour"
echo -e "\e[0;32mDone\e[0m"
}
function every_6_hours () {
rm -f /etc/cron.d/reboot
echo "0 */6 * * * root /sbin/reboot" > /etc/cron.d/reboot
echo "start2" > /home/autoreboot
echo -e "Auto-Reboot has been successfully set every 6 hours"
echo -e "\e[0;32mDone\e[0m"
}
function every_12_hours () {
rm -f /etc/cron.d/reboot
echo "0 */12 * * * root /sbin/reboot" > /etc/cron.d/reboot
echo "start3" > /home/autoreboot
echo -e "Auto-Reboot has been successfully set every 12 hours"
echo -e "\e[0;32mDone\e[0m"
}
function set_once_a_day () {
rm -f /etc/cron.d/reboot
echo "0 0 * * * root /sbin/reboot" > /etc/cron.d/reboot
echo "start4" > /home/autoreboot
echo -e "Auto-Reboot has been successfully set once a day"
echo -e "\e[0;32mDone\e[0m"
}
function set_once_a_week () {
rm -f /etc/cron.d/reboot
echo "0 0 */7 * * root /sbin/reboot" > /etc/cron.d/reboot
echo "start5" > /home/autoreboot
echo -e "Auto-Reboot has been successfully set once a week"
echo -e "\e[0;32mDone\e[0m"
}
function once_a_month () {
rm -f /etc/cron.d/reboot
echo "0 0 * 1 * root /sbin/reboot" > /etc/cron.d/reboot
echo "start6" > /home/autoreboot
echo -e "Auto-Reboot has been successfully set once a month"
echo -e "\e[0;32mDone\e[0m"
}
function set_every_00 () {
rm -f /etc/cron.d/reboot
echo "0 0 * * * root /sbin/reboot" > /etc/cron.d/reboot
echo "start7" > /home/autoreboot
echo -e "Auto-Reboot has been successfully set Every 00.00am"
echo -e "\e[0;32mDone\e[0m"
}
function set_every_02 () {
rm -f /etc/cron.d/reboot
echo "0 2 * * * root /sbin/reboot" > /etc/cron.d/reboot
echo "start8" > /home/autoreboot
echo -e "Auto-Reboot has been successfully set Every 02.00am"
echo -e "\e[0;32mDone\e[0m"
}
function set_every_04 () {
rm -f /etc/cron.d/reboot
echo "0 4 * * * root /sbin/reboot" > /etc/cron.d/reboot
echo "start9" > /home/autoreboot
echo -e "Auto-Reboot has been successfully set Every 04.00am"
echo -e "\e[0;32mDone\e[0m"
}
function stop () {
rm -f /etc/cron.d/reboot
sleep 0]5
echo > /home/autoreboot
echo -e "Auto-Reboot has been successfully Turn Off"
echo -e "\e[0;32mDone\e[0m"
}
function deleted () {
echo "" > /root/log-reboot]txt
echo "Auto Reboot Log successfully deleted!"
}

#Status Auto Reboot
if [[ "$cek" = "start1" ]]; then
sts="${Info1}"
elif [[ "$cek" = "start2" ]]; then
sts="${Info2}"
elif [[ "$cek" = "start3" ]]; then
sts="${Info3}"
elif [[ "$cek" = "start4" ]]; then
sts="${Info4}"
elif [[ "$cek" = "start5" ]]; then
sts="${Info5}"
elif [[ "$cek" = "start6" ]]; then
sts="${Info6}"
elif [[ "$cek" = "start7" ]]; then
sts="${Info7}"
elif [[ "$cek" = "start8" ]]; then
sts="${Info8}"
elif [[ "$cek" = "start9" ]]; then
sts="${Info9}"
else
sts="${Error}"
fi
clear

# Echo Shell
echo -e "\e[${line}════════════════════════════════════════════"$NC
echo -e "\e[${back_text}         \e[30m•\e[$box Auto Reboot Server\e[30m •             \e[m"
echo -e "\e[${line}════════════════════════════════════════════"$NC
echo -e "\e[${text} SSTATUS :\e[0m  $sts"
echo -e ""
echo -e " \e[${number} [•1] $NC \e[${below} SSet Auto-Reboot Every 1 Hour"$NC
echo -e " \e[${number} [•2] $NC \e[${below} SSet Auto-Reboot Every 6 Hours"$NC
echo -e " \e[${number} [•3] $NC \e[${below} SSet Auto-Reboot Every 12 Hours"$NC
echo -e " \e[${number} [•4] $NC \e[${below} SSet Auto-Reboot Once 1 Day"$NC
echo -e " \e[${number} [•5] $NC \e[${below} SSet Auto-Reboot Once 1 Week"$NC
echo -e " \e[${number} [•6] $NC \e[${below} SSet Auto-Reboot Once 1 Month"$NC
echo -e " \e[${number} [•7] $NC \e[${below} SSet Auto-Reboot Every 00.00 AM"$NC
echo -e " \e[${number} [•8] $NC \e[${below} SSet Auto-Reboot Every 2.00 AM"$NC
echo -e " \e[${number} [•9] $NC \e[${below} SSet Auto-Reboot Every 4.00 AM"$NC
echo -e " \e[${number} [10] $NC \e[${below} TTurn off Auto-Reboot Server"$NC
echo -e " \e[${number} [11] $NC \e[${below} VView reboot log"$NC
echo -e " \e[${number} [12] $NC \e[${below} RRemove reboot log"$NC
echo -e "\e[${line}════════════════════════════════════════════"$NC
echo -e ""
echo -e "\e[${below}PPress CTRL+C to Return/Exit"
read -rp "Please Enter The Correct Number : " -e num
if [[ "$num" = "1" ]]; then
every_an_hour
elif [[ "$num" = "2" ]]; then
every_6_hours
elif [[ "$num" = "3" ]]; then
every_12_hours
elif [[ "$num" = "4" ]]; then
set_once_a_day
elif [[ "$num" = "5" ]]; then
set_once_a_week
elif [[ "$num" = "6" ]]; then
once_a_month
elif [[ "$num" = "7" ]]; then
set_every_00
elif [[ "$num" = "8" ]]; then
set_every_02
elif [[ "$num" = "9" ]]; then
set_every_04
elif [[ "$num" = "10" ]]; then
stop
elif [[ "$num" = "11" ]]; then
if [ ! -e /root/log-reboot]txt ]; then
	echo "No reboot activity found"
	else 
	echo -e "\e[1;36mLOG REBOOT\e[0m"
	echo -e "\e[1;33m----------\e[0m"
	cat /root/log-reboot]txt
fi
elif [[ "$num" = "12" ]]; then
echo "" > /root/log-reboot]txt
echo -e "${GREEN}Auto Reboot Log successfully deleted!${NC}"
else
clear
echo -e "\e[1;31mYou Entered The Wrong Number, Please Try Again!\e[0m"
fi
