# Setting up a new RPi

1. Install Raspberry OS (Lite for headless server)
2. Add empty ssh file in boot dir of the SD card with `touch ssh` to activate ssh access
3. Connect to router and scan with `sudo nmap -sP 192.168.1.0/24` to find the new RPi IP.

# 2. SHH access with ssh keys

1. Do `ssh-copy-id pi@192.168.1.45` from your mac
2. Connect to the Pi with `ssh pi@192.168.1.45`
3. Change default RPi password with `passwd`
4. Append `PasswordAuthentication no` to `/etc/ssh/sshd_config` using `sudo nano ssh_config `
5. Run `sudo sudo apt-get update --yes && sudo apt-get upgrade --yes`.

# 3. Install Unifi controller

1. `sudo apt update`
2. `sudo apt upgrade`
3. `sudo apt install openjdk-8-jre-headless`
4. `echo 'deb https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list`
5. `sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg`
6. `sudo apt update`
7.  `sudo apt install unifi`
8.  Visit `https://[IPADDRESS]:8443`