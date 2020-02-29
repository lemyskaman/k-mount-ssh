#!/bin/bash
#by lemys lopez lemyskaman@gmail.com



./dependency_ubuntu18.04.sh

echo "giving executable permisions on kmountssh"
sudo chmod +x kmountssh
CURRENT_PATH=$(pwd -LP)

FILE="/usr/bin/kmountssh"
if [ -L "$FILE" ]; then
    echo "the softlink already exists"
else 
	sudo ln -s $CURRENT_PATH/kmountssh $FILE
fi
