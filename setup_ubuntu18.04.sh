#!/bin/bash
#by lemys lopez lemyskaman@gmail.com



./dependency_ubuntu18.04.sh

echo "giving executable permisions on sshf_mount"
sudo chmod +x sshf_mount
echo "atemping to creating sshf_mount softlink on /usr/bin"

FILE="/usr/bin/sshf_mount"
if [ -L "$FILE" ]; then
    echo "the softlink already exists"
else 
	sudo ln -s sshf_mount $FILE
fi
echo "atemping to create the main folder were to mount remote directories at ~/sshf_mount_computers"
FILE="/home/kaman/sshf_mount_computers"
if [ -d "$FILE" ]; then
    echo "the folder $FILE already exists"
else 
	mkdir $FILE
fi
