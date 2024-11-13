# auto_reboot

Download script

wget https://raw.githubusercontent.com/VdDejavu/auto_reboot/refs/heads/main/auto_reboot.sh

chmod +x auto_reboot.sh

Tambahkan Schedule untuk cek setiap 5 menit

crontab -e

*/5 * * * * bash /root/auto_reboot.sh >> /root/auto_reboot.log 2>&1

untuk delete isi log setelah 30 hari 

0 0 1 * * bash sed -i 'd' /root/auto_reboot.log
