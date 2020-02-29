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
	if [ $? -gt 0 ]; then 
			echo "Unable to create a softlink at $FILE"	
	else
			echo "kmountssh successfully installed, you can run now kmountssh widely on your os"
	fi

fi
