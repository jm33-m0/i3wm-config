#!/bin/sh

if test -e i3wm-config; then
    echo ''
    echo '+ERROR: Folder already exists'
    exit 1
fi

echo ''
echo '+INFO: Make sure you have i3blocks and git installed, along with other necessary packages'
echo ''

printf "+INFO: Ready to install config files..."
echo ''

git clone https://github.com/jm33-m0/i3wm-config.git && cd i3wm-config

cp ./i3blocks.conf /home/$USER/.i3blocks.conf
cp ./config /home/$USER/.config/i3/
echo ''
echo 'Requesting root privilege...'
sudo cp ./i3status.conf /etc/

echo ''
echo '+SUCCESS: Copied config files, reload your i3wm to see the effect'
