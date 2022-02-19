The command I used to find the versions being run on the two ports was running an nmap scan from ports
0-100 with -p and using aggressive scanning with -A.
nmaptocsv helped to parse the output for deiverable four by allowing it to be easily planted into an excel speadsheet.
Some of the techniques I used in the remote code execution was to change file paths so that I could find different scripts and run them.
I figured out that the password list that I needed for the brute force section was things containing samwise.
Once I had my list, I used hydra to figure out what the person's username and password are.

