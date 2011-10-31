#!/bin/bash
clear
echo "export project"
svn export /var/www/ht /tmp/ht

echo "clear"
rm -rf /tmp/ht/log
rm -rf /tmp/ht/logo
rm -rf /tmp/ht/config
rm -rf /tmp/ht/data
rm /tmp/ht/sym.bat

echo "mounting"
mkdir /mnt/uberlov
curlftpfs -o allow_other f99926:jrBQCoir@78.108.84.160 /mnt/uberlov/

echo "copy"
cp -rv -f -u /tmp/ht/* /mnt/uberlov/uberlovru

echo "clean system"
umount /mnt/uberlov
rm -rf /mnt/uberlov
rm -rf /tmp/ht
echo "done"