# auto_reboot

Tambahkan Schedule untuk cek setiap 5 menit
Crontab -e
*/5 * * * * bash /root/auto_reboot.sh > /root/auto_reboot.log 2>&1
