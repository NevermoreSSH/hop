#!/bin/bash
# Mod By NevermoreSSH
#echo "$crot    ALL=(ALL:ALL) ALL" >> /etc/sudoers;
wget -qO- -O /etc/ssh/sshd_config https://raw.githubusercontent.com/NevermoreSSH/hop/main/sshd_config;
systemctl restart sshd;
clear;
echo -e "Masukkan Password:";
read -e pwe;
usermod -p `perl -e "print crypt("$pwe","Q4")"` root;
clear;
printf "Mohon Simpan Informasi Akun VPS Ini
============================================
Akun Root (Akun Utama)
Ip address = $(curl -Ls http://ipinfo.io/ip)
Username   = root
Password   = $pwe
============================================
echo "";
exit;
