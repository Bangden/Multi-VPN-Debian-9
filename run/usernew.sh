#!/bin/bash
#Script auto create user SSH
clear
echo -e "                               )                      (       )  " | lolcat
echo -e "   (     (  (               ( /(                      )\ ) ( /(  " | lolcat
echo -e "   )\    )\ )\   (          )\())         (    (   ( (()/( )\()) " | lolcat
echo -e "((((_)( ((_|(_)  )\  (     ((_)\   (     ))\   )\  )\ /(_)|(_)\  " | lolcat
echo -e " )\ _ )\ _  _   ((_) )\ )    ((_)  )\ ) /((_) ((_)((_|_))  _((_) " | lolcat
echo -e " (_)_\(_) || |   (_)_(_/(   / _ \ _(_/((_))   \ \ / /| _ \| \| | " | lolcat
echo -e "  / _ \ | || |   | | * \)) | (_) | * \)) -_)   \ V / |  _/| .* | " | lolcat
echo -e " /_/ \_\|_||_|   |_|_||_|   \___/|_||_|\___|    \_/  |_|  |_|\_| " | lolcat
echo -e "================================================================ " | lolcat
echo -e "Multi VPN Script by BangDen.codes " | lolcat
echo -e ""
read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=`dig +short myip.opendns.com @resolver1.opendns.com`
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "====Informasi SSH Account====" | lolcat
echo -e "Host: id.biznet1.bangden.codes" | lolcat
echo -e "Username: $Login " | lolcat
echo -e "Password: $Pass" | lolcat
echo -e "Port OpenSSH: 22,444" | lolcat
echo -e "Port Dropbear: 143,3128" | lolcat
echo -e "Port SSL: 443" | lolcat
echo -e "Port Squid: 8000,8080" | lolcat
echo -e "Config OpenVPN (TCP 1194): http://id.biznet1.bangden.codes:81/client.ovpn" | lolcat
echo -e "-----------------------------" | lolcat
echo -e "Masa aktif Sampai: $exp" | lolcat
echo -e "=============================" | lolcat
echo -e ""
echo -e "=============================" | lolcat
echo -e "List Perintah" | lolcat
echo -e "=============================" | lolcat
echo -e "  menu      : Untuk menampilkan daftar perintah" | lolcat
echo -e "  usernew   : Untuk membuat akun SSH & OpenVPN" | lolcat
echo -e "  trial     : Untuk membuat akun trial" | lolcat
echo -e "  hapus     : Untuk menghapus akun SSH & OpenVPN" | lolcat
echo -e "  cek       : Cek user login" | lolcat
echo -e "  member    : Daftar member SSH & OpenVPN" | lolcat
echo -e "  reboot    : Reboot VPS" | lolcat
echo -e "  speedtest : Speedtest VPS" | lolcat
echo -e "  info      : Menampilkan informasi sistem" | lolcat
echo -e "  about     : Info script auto install" | lolcat
echo -e "  exit      : Keluar dari Putty atau Termius" | lolcat
echo -e ""