#!/bin/bash

apt-get update
apt-get install -y ufw fail2ban unattended-upgrades

# enable UFW firewall
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw --force enable

# enable automatic security updates
dpkg-reconfigure -plow unattended-upgrades

echo "Startup script completed at $(date)" > /var/log/startup-complete.log

# Disable root login
sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
systemctl restart ssh

echo "Security hardening completed $(date)" > /var/log/hardening.log