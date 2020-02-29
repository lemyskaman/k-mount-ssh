#!/bin/bash
#by lemys lopez lemyskaman@gmail.com



./dependency_ubuntu18.04.sh

echo "giving executable permisions on kmountssh"
sudo chmod +x kmountssh
echo "atemping to creating kmountssh softlink on /usr/bin"

FILE="/usr/bin/kmountssh"
if [ -L "$FILE" ]; then
    echo "the softlink already exists"
else 
	sudo ln -s kmountssh $FILE
fi
echo "atemping to create the main folder were to mount remote directories at ~/kmountssh_computers"
FILE="/home/kaman/kmountssh_computers"
if [ -d "$FILE" ]; then
    echo "the folder $FILE already exists"
else 
	mkdir $FILE
fi
