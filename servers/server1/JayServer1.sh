#!/bin/sh

# Do the challenges here as root

# Add the first user
useradd --create-home --shell /bin/bash jayhacker1
passwd jayhacker1 < /root/passwords/jayhacker1.pass

# First challenge (Cat a file)
sed 1q /root/passwords/jayhacker2.pass > /home/jayhacker1/flag.txt

# Add the second user
useradd --create-home --shell /bin/bash jayhacker2
passwd jayhacker2 < /root/passwords/jayhacker2.pass

echo 'Done.'

exit
