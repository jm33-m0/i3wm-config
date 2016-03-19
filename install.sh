#!/bin/bash

if [ ! $(ls /usr/bin/sudo) || ! $(ls /usr/bin/i3blocks)];
then
    echo "You don't have necessary packages installed"
else
    echo -e "\nWelcome!\n"
fi

git clone https://github.com/jm33-m0/i3wm-config.git && cd i3wm-config

cp ./i3blocks.conf /home/$USER/.i3blocks.conf
cp ./config /home/$USER/.config/i3/
sudo cp ./i3status.conf /etc/

echo 'Copied config files, reload your i3wm to see the effect'
