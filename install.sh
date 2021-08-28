#!/usr/bin/bash
cat a* > mariadb_2_10.5.8-2_aarch64.deb
clear
echo 'Installing mySQL .. please wait ..'
sleep 1.4
dpkg -i mariadb_2_10.5.8-2_aarch64.deb
mysqld_safe > /dev/null 2>&1 &
clear
echo 
echo 'Database Installed ✓ Starting Database ...'
sleep 3.5
mysql -u $(whoami)