<p align="center">


<h2 align="center">
Auto Script Install All VPN Service
Mod By NevermoreSSH
<img src="https://img.shields.io/badge/Beta-v0.2-purple.svg"></h2>

</p> 
<h2 align="center"> Supported Linux Distribution</h2>
<p align="center"><img src="https://d33wubrfki0l68.cloudfront.net/5911c43be3b1da526ed609e9c55783d9d0f6b066/9858b/assets/img/debian-ubuntu-hover.png"width="400"></p> 
<p align="center">
<img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%209&message=Stretch&color=purple"> 
<img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%2010&message=Buster&color=purple">  
<img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%2011&message=Bullseye&color=purple"> 
<p align="center">
<img src="https://img.shields.io/static/v1?style=for-the-badge&logo=ubuntu&label=Ubuntu%2018&message=Lts&color=red"> 
<img src="https://img.shields.io/static/v1?style=for-the-badge&logo=ubuntu&label=Ubuntu%2020&message=Lts&color=red">
</p>

<h2 align="center">Network VPN</h2>

<h2 align="center">

![Hits](https://img.shields.io/badge/SSH-SlowDNS-8020f3?style=for-the-badge&logo=Cloudflare&logoColor=white&edge_flat=false)
![Hits](https://img.shields.io/badge/SSH-Websocket-8020f3?style=for-the-badge&logo=Cloudflare&logoColor=white&edge_flat=false)
![Hits](https://img.shields.io/badge/XRAY-Vmess-f34b20?style=for-the-badge&logo=Cloudflare&logoColor=white&edge_flat=false)
![Hits](https://img.shields.io/badge/XRAY-VLess-f34b20?style=for-the-badge&logo=Cloudflare&logoColor=white&edge_flat=false)
![Hits](https://img.shields.io/badge/XRAY-Trojan-f34b20?style=for-the-badge&logo=Cloudflare&logoColor=white&edge_flat=false)
</h2>


## ADDITIONAL INFO, PLEASE READ
* MINIMUM RAM 1 GB TO USE THIS SCRIPT
* SORRY I DELETED THE SQUID PROXY, please edit this script manually

# Special For OS
* • Debian 9, 10 & 11
or
* • Ubuntu 18.04 & 20.04
* • Working For VPS AWS, AZURE, DigitalOcean, Centerhop
## Installation 
## 1.
<img src="https://img.shields.io/badge/Update%20_&_%20Upgrade Debian 9,10,11-purple">

  ```html
apt update -y && apt upgrade -y && apt dist-upgrade -y && reboot
```
  or
  
  <img src="https://img.shields.io/badge/Update%20_&_%20Upgrade Ubuntu 18 & 20 LTS-purple">

  ```html
apt-get update && apt-get upgrade -y && apt dist-upgrade -y && update-grub && reboot
```
  
### 2.

  <img src="https://img.shields.io/badge/Install_All_Service_VPN%20-purple">

* Install All VPN Service / Install All VPN Service
   
```html
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/NevermoreSSH/hop/main/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh
```
  

### 4. DONE

* • If you can't log in to the VPS, use the SSH port
* • 22, 2253

### 5. MENU, INFO ,UPDATE ,FIX
* to main menu
```html
menu
```
* for menu updates and info updates
```html
updatemenu
```
* Automatically fix SSLH, WS-TLS errors
```html
sl-fix
```
```html
reboot
```
* Fix SSL ERROR
* automatically to fix SSL/TLS Certificate errors and SUBDOMAIN
* fix error in acme domain section
* to update SSL/TLS certificates
```html
slhost && certv2ray
```
* lalu restart
```html
restart
```
*
*
*

### 6. FIX ERROR SSLH WS
# Auto Fix Error SSLH + WS-TLS 443
* 1 • If an error occurs in SSLH and SSH WS-TLS, use this script to fix it
```html
menu
 ```

* 2 • in the menu then select 17 (SL-FIX Menu)
```html
17
 ```

* 3 • if it's finished then reboot / restart the vps
```html
reboot
 ```

### 7. Info Websocket
* Websocket must use a subdomain/domain and already pointed at cloudflare (CDN CLOUDFLARE)
* Without a subdomain/domain it's impossible to connect with bugs originating from cloudflare
*
*
*

### 8. Edit Port SSL WS or Change Port SSL (Manual)
* change the port you want to change, if it's 443, please change the existing text to 443
* after editing then save (CTRL+X+Y and enter)

```html
nano /etc/systemd/system/ws-tls.service
 ```
```html
nano /usr/local/bin/ws-tls
 ```
```html
nano /etc/default/sslh
 ```
```html
nano /etc/stunnel5/stunnel5.conf
 ```

### 100 (Fix manually) Fix SSLH Error

* Fix SSLH errors on VPS that don't support SSLH
* especially those whose VPS does not support SSLH
* turn off ws-tls
```html
systemctl stop ws-tls
```
* create user sslh / edit passwd
```html
echo sslh:x:109:114::/nonexistent:/usr/sbin/nologin >> /etc/passwd
```
* note: edit the passwd and move the sslh above vnstat

* start sslh and run
```html
systemctl start sslh
/etc/init.d/sslh start
/etc/init.d/sslh restart
```
* lalu start ws-tls
```html
systemctl start ws-tls
```
```html
reboot
```
*done



# Special INFO SlowDNS
• SSH Over DNS (SlowDNS)
* the speed is limited
* download speed 4 Mbps (Max Speed)
* Support all ssh ports

### Script Features

• CHECK ALL IP AND PORT (Service ALL VPN)

• SSH & OpenVPN

• SSH Over DNS (SlowDNS)

• SSH Over Websocket (Cloudflare)

• OpenVPN Over Websocket (Cloudflare)

• SSLH

• SSH CloudFront Over Websocket (Aws CloudFront Only) [OFF]

• OHP SSH & OHP Dropbear & OHP OpenVPN (OPEN HTTP PUNCHER)

• XRAY VMESS 

• XRAY VLESS

• XRAY TROJAN

• XRAY VMESS GRPC

• XRAY VLESS GRPC

• SHADOWSOCKS 

• SHADOWSOCKS OBFS

• SHADOWSOCKS xray-plugin

• SHADOWSOCKS v2ray-plugin

• SHADOWSOCKS gost-plugin

• SSR

• PPTP VPN

• L2TP VPN

• SSTP VPN

• WIREGUARD

• TROJAN GO

• Backup Data ALL Service

• Restore Data ALL Service

• Auto Fix

• Auto Update

### Os Supported

• Debian 10 & 9

• Ubuntu 18.04 & 20.04

# Service & Port

• SlowDNS                   : All Port SSH

• OpenSSH                   : 22, 2253

• Dropbear                  : 443, 109, 143, 1153

• Stunnel5                  : 443, 445, 777

• OpenVPN                   : TCP 1194, UDP 2200, SSL 990

• Websocket SSH TLS         : 443

• Websocket SSH HTTP        : 8880

• Websocket OpenVPN         : 2086

• Squid Proxy               : 3128, 8080 [OFF]

• Badvpn                    : 7100, 7200, 7300

• Nginx                     : 89

• Wireguard                 : 7070

• L2TP/IPSEC VPN            : 1701

• PPTP VPN                  : 1732

• SSTP VPN                  : 444

• Shadowsocks-R             : 1443-1543

• SS-OBFS TLS               : 2443-2543

• SS-OBFS HTTP              : 3443-3543

• XRAYS Vmess TLS           : 8443

• XRAYS Vmess None TLS      : 80

• XRAYS Vless TLS           : 8443

• XRAYS Vless None TLS      : 80

• XRAYS Trojan              : 2083

• XRAYS Vmess GRPC TLS      : 1180,3380

• XRAYS Vless GRPC TLS      : 2280,4480

• OHP SSH                   : 8181

• OHP Dropbear              : 8282

• OHP OpenVPN               : 8383

• Trojan Go                 : 2087

• CloudFront Over Websocket : [OFF]


 ### Server Information & Other Features

• Timezone                : Asia/Jakarta (GMT +7)

• Fail2Ban                : [ON]

• Dflate                  : [ON]

• IPtables                : [ON]

• Auto-Reboot             : [ON]

• IPv6                    : [OFF]

• Autoreboot On 05.00 GMT +7

• Auto Delete Expired Account

• Full Orders For Various Services

• White Label

• Auto Fix

• Auto Update

<p align="center">
<img height=21 src="https://komarev.com/ghpvc/?username=NevermoreSSH">
</p>
<div height='45' align="center">

<h2 align="center">
