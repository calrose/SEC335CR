# Single user hack for debian
Boot up Kali
Press space in the bootup sequence to show the startup commands
Press enter on Kali GNU/Linux
Go to where the text says quiet splash
On that line, type single init=/bin/bash (quiet splash single ...)
Press ctrl ^X
In the prompt, type mount -rw -o remount /
Type passwd and enter a new root password
This allows to check disk space with df -h without being in the system
Type sync
Type umount /
Reboot the system
