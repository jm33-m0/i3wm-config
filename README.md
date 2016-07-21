# i3wm-config
My configuration files of i3wm

##Screenshot

![i3wm](https://jm33.me/img/i3.png)

##Installation

- Simply download and run `install.sh`, make sure you have `i3blocks`, `git`, `i3wm`, `i3bar`, and other necessary packages installed before you run my script, which looks like:

```bash
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

echo '____________________________________________________________________________'
git clone https://github.com/jm33-m0/i3wm-config.git && cd i3wm-config
echo '____________________________________________________________________________'

echo ''
echo '+INFO: Installing...'

echo '____________________________________________________________________________'
cp ./i3blocks.conf /home/$USER/.i3blocks.conf -v
cp ./config /home/$USER/.config/i3/ -v
echo '____________________________________________________________________________'
echo ''
echo '+INFO: Requesting root privilege...'
echo '____________________________________________________________________________'
sudo cp ./i3status.conf /etc/ -v
sudo cp ./v6.sh /etc/ -v && sudo chmod 755 /etc/v6.sh
echo '____________________________________________________________________________'

echo ''
echo '+INFO: Cleaning up...'
sudo rm ../i3wm-config -rf

echo ''
echo '+SUCCESS: Copied config files, reload your i3wm to see the effect'
```
