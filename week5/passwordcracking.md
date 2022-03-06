## cewl
Command pulls a word list from a URL and can be used to be put in a text file for password cracking.
Can specify depth with -d and/or specify minimum and/or maximum word length with -m and -x.
Word count can be shown with -c.
## rsmangler
Takes a word list and edits the text with permutatations.
-x and -m work like cewl, -l does lowercase, -s swaps case, -e adds an ed to the end of a word, -i adds ing to the end of the word, 
-p permutates all the words, -u does uppercase, -a creates an acronym
## Hydra note
The only thing that gave me trouble was having hydra give me the results I needed. The issue was that -p needs to be -P.
## Grabbing password hashes
Finding them involves becoming the root user for a given system, then accessing etc/shadow through commands like cat.
## Reading a hash
Text before the first : is the username, the first few characters after that (eg: 6$6) is the hashing algorithmn, text just after the algorithmn to the first . is the
hashed password, and the salt is a common text pattern with every hash that's seen in a given system.
## John
Used to crack hashes. john --wordlist=textfile shadowfile
## Hashcat
Used to crack hashes. hashcat -m (algorithmn used in the hash eg: SHA 512-crypt is 1800) -a (attack mode) 0 -o (output file) outputfile unshadowedfile wordlist
