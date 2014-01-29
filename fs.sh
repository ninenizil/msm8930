#!/bin/bash
cd fs/
echo "Checking for exfat..."
sleep 2
if [ -d exfat/.git ];
then echo "Exfat already synced"
else
git clone git://github.com/rbheromax/exfat-nofuse exfat
fi
echo "Checking for F2FS..."
sleep 2
if [ -d f2fs/.git ];
then echo "F2FS already synced"
else
git clone git://github.com/rbheromax/f2fs-3.4.y f2fs
fi
sleep 2
echo "Checking complete"
