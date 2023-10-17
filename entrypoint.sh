#!/bin/bash

echo "Lancement de VISUAL STUDIO CODE sur : " $DISPLAY

/usr/share/code/bin/code --no-sandbox

# Check if VScode always running every 5 seconds
# because of multi window's mode
while [[ $(ps -ef | grep "code --no-sandbox" | grep -v grep) ]]
do
  sleep 5
done

exit 0