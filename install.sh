#/bin/bash
# Created by Ajay K Shanbhog
# This is is a install script to run raspbery pi fan 100 % speed 

echo "This script will make fan run 100% by overidding existing fan service"
cd /usr/bin
wget https://files.navisto.cloud/api/public/dl/2e-iegHB/home/rpi5_fan/myfan.sh
chmod +x /usr/bin/myfan.sh
cd /lib/systemd/system
wget https://files.navisto.cloud/api/public/dl/oIJsOXB5/home/rpi5_fan/myfan.service
systemctl daemon-reload
systemctl enable myfan.service
systemctl start myfan.service
systemctl status myfan.service
echo "Installed Successfully !"
echo "System will reboot in 5 seconds to apply changes"
sleep 5
reboot
