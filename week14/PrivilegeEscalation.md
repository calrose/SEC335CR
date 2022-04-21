# Commands for finding SUID and world writable files/directories
## SUID: find / -perm /4000 2>/dev/null
## World Writable: find / -perm -o+w 2>/dev/null
