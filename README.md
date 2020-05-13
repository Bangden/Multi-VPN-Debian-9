![alt text](https://raw.githubusercontent.com/Bangden/Multi-VPN-Debian-9/master/topologi.png "Topologi Multi VPN")

## Auto Install Multi VPN Debian 9

Script ini kami modif dari beberapa sumber (Fornesia, Rzengineer, Fawzya) dan menambahkan beberapa kekurangan di sektor konfigurasi dan service yang tidak support dengan Debian 8 dan Debian 9.

Ada beberapa poin sebelum Anda menjalankan script ini, yaiut:
### Peraturan Script
- :heavy_check_mark: OS Debian 9 64bit.
- :heavy_check_mark: Ram minimal 1GB.
- :heavy_check_mark: Core minimal 1cpu.
- :heavy_check_mark: Pengguna Linode/Digital Ocean/Vultr. Jangan aktifkan IPv6. (Karena port akan diarahkan ke IPv4).
- :heavy_check_mark: All open port `0.0.0.0/0`. Jika menggunakan firewall yang disediakan oleh provider, disarankan untuk dimatikan. Karena script ini tidak menggunaknan itu.
- :heavy_check_mark: Pastikan OS tidak / belum terinstall apapun, contoh (apache, nginx, php, node.js, dll).
- :heavy_check_mark: Pastikan OS sudah terinstall `Build Essential`.
- :heavy_check_mark: Script harus dijalankan dengan `root`.
- :heavy_check_mark: Jangan gunakan `Key Pair` untuk login sebagai `root`.

### Komponen yang terinstall
Ada beberapa komponen dan repositori yang akan terinstall di dalam server, yaitu:

|          |   Versi |
| :---:    |  :---:  |
| Nginx    | 1.10.3  |
| Iptables | 1.6.0   |
| OpenVPN  | 2.8.3   |
| Dropbear | 2016.74 |
| Squid3   | 3.5.23  |
| Stunnel  | 5.39    |
| Webmin   | 1.941   |
| OpenSSL  | 1.1. 1  |

### Pengguna AWS/GCP/ALIBABA CLOUD/AZURE/OpenStack
Sebelum instalasi, saya menyarakan untuk mengubah konfigurasi cloud. Pastikan `preserve_hostname` sudah diubah menjadi `true`. Berikut cara mengubah konfigrasinya.

`ls -l /etc/cloud/cloud.cfg`

Output:
```shell
-rw-r--r-- 1 root root 3169 Mei 04 22:50 /etc/cloud/cloud.cfg
```
`sudo nano /etc/cloud/cloud.cfg`

Ubah `preserve_hostname: false` menjadi `preserve_hostname: true`

**Refrensi dari linuxer.of.id** - [Konfigurasi Cloud.cfg](https://linuxer.or.id/d/3-bagaimana-cara-membuat-hostname-yang-benar-di-aws "Bagaimana cara membuat hostname yang benar di AWS")

### Cara Install
Berikut step by step cara install script ini.
>>>
❗️ **Mohon baca terlebih dahulu peraturan yang ada di atas sampai Anda mengerti atau paham.**

❗️ **Mohon perhatikan setiap langkah dan perintah, supaya tidak terjadi kegagalan saat proses installasi.**
>>>

1. Login ke VPS sebagai `root`.
   - Untuk memastikan ketik perintah `sudo su` ketika sudah login.
2. Update terlebih dahulu dengan perintah `apt update -y`
3. Install git terlebih dahulu `apt-get install -y git`
4. Posisikan di dalam direktori `root` `cd ~`
5. Clone repo git `git clone https://github.com/Bangden/Multi-VPN-Debian-9.git multivpn`
6. Masuk ke direktori multivpn dengan perintah `cd multivpn`
7. Berikan hak akses pada script `chmod +x mulai.sh`
8. Jalankan script `mulai.sh` terlebih dahulu, dengan perintah `./mulai.sh`
9. Jika server sudah ter-restart, tunggu ± 1 menit. Lalu login kembali sebagai `root`
10. Lalu jalankan perintah `mulai` dengan perintah `mulai`
11. Tunggu hingga proses instalnya selesai. Jangan close terminal saat proses instalasi.
12. Jika selesai, kamu akan melihat beberapa informasi dan perintah menu.

### Perintah Menu
Kamu dapat mengetikan beberapa perintah kedalam terminal/ssh, antara lain:
- `menu` = Untuk melihat list perintah.
- `usernew` = Untuk menambah / membuat akun ssh & OpenVPN.
- `trial` = Untuk membuat akun trial.
- `hapus` = Untuk menghapus akun ssh & OpenVPN.
- `cek` = Untuk melihat user yang aktif maupun login.
- `member` = Untuk melihat user yang sudah dibuat.
- `reboot` = Untuk me-restart server.
- `speedtest` = Untuk mengukur kecepatan server.
- `info` = untuk melihat informasi system.
- `about` = untuk melihat about.

### Troubleshooter
Jika VPS login menggunakan `Key Pair` silahkan menggunakan metode login user dan password.

Berikut cara dapat login menggunakan password dapat kamu lihat [di sini](https://linuxer.or.id/d/4-bagaimana-login-menggunakan-putty-di-gcp/2 "Bagaimana login menggunakan putty di GCP?") .
