#!/bin/sh

# A little cooldown
echo 'Waiting for everything to turn on...'
sleep 2

echo 'Starting ssh service...'
service ssh start

# Coma
while true;
do
    sleep 1000;
done
