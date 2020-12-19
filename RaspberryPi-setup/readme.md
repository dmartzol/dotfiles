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