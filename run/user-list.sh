#!/bin/bash
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
echo -e "-------------------------------" | lolcat
echo -e "USERNAME          EXP DATE     " | lolcat
echo -e "-------------------------------" | lolcat
while read expired
do
        AKUN="$(echo $expired | cut -d: -f1)"
        ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
        exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
        if [[ $ID -ge 1000 ]]; then
        printf "%-17s %2s\n" "$AKUN" "$exp"
        fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo -e "-------------------------------" | lolcat
echo -e "Jumlah akun: $JUMLAH user" | lolcat
echo -e "-------------------------------" | lolcat
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