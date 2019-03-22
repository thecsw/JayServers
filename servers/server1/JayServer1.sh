#!/bin/sh

# Do the challenges here as root

# Add the first user
useradd --create-home --shell /bin/bash jayhacker1
passwd jayhacker1 < /root/passwords/jayhacker1.pass > /dev/null 2>&1
echo "alias su='su -'" >> /home/jayhacker1/.bashrc

# Add the second user
useradd --create-home --shell /bin/bash jayhacker2
passwd jayhacker2 < /root/passwords/jayhacker2.pass > /dev/null 2>&1
echo "alias su='su -'" >> /home/jayhacker2/.bashrc

# Set the permissions on everything
find /home/ -type f | sed 1d | xargs chmod 400
find /home/ -type d | sed 1d | xargs chmod 500

# First challenge (Cat a file)
sed 1q /root/passwords/jayhacker2.pass > /home/jayhacker1/flag.txt

echo 'Done.'

exit
