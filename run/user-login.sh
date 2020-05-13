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

data=( `ps aux | grep -i dropbear | awk '{print $2}'`);

echo -e "-----------------------" | lolcat;
echo -e "Checking Dropbear login" | lolcat;
echo -e "-----------------------" | lolcat;

for PID in "${data[@]}"
do
	#echo "check $PID";
	NUM=`cat /var/log/auth.log | grep -i dropbear | grep -i "Password auth succeeded" | grep "dropbear\[$PID\]" | wc -l`;
	USER=`cat /var/log/auth.log | grep -i dropbear | grep -i "Password auth succeeded" | grep "dropbear\[$PID\]" | awk '{print $10}'`;
	IP=`cat /var/log/auth.log | grep -i dropbear | grep -i "Password auth succeeded" | grep "dropbear\[$PID\]" | awk '{print $12}'`;
	if [ $NUM -eq 1 ]; then
		echo "$PID - $USER - $IP";
	fi
done

echo -e ""

data=( `ps aux | grep "\[priv\]" | sort -k 72 | awk '{print $2}'`);

echo -e "----------------------" | lolcat;
echo -e "Checking OpenSSH login" | lolcat;
echo -e "----------------------" | lolcat;

for PID in "${data[@]}"
do
        #echo "check $PID";
	NUM=`cat /var/log/auth.log | grep -i sshd | grep -i "Accepted password for" | grep "sshd\[$PID\]" | wc -l`;
	USER=`cat /var/log/auth.log | grep -i sshd | grep -i "Accepted password for" | grep "sshd\[$PID\]" | awk '{print $9}'`;
	IP=`cat /var/log/auth.log | grep -i sshd | grep -i "Accepted password for" | grep "sshd\[$PID\]" | awk '{print $11}'`;
        if [ $NUM -eq 1 ]; then
                echo "$PID - $USER - $IP";
        fi
done

echo -e ""

echo -e "------------------------------------------------" | lolcat
echo -e " Multi Login = kill " | lolcat
echo -e " Cara pakai : kill nomor PID " | lolcat
echo -e "------------------------------------------------" | lolcat
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