# kmountssh
A handy remote file system mounting tool

## Description
kmountssh is a bash script, that ease the use of the sshfs linux tool. 

In a common scenario you want to use sshfs to locally mount remote server paths, so you have to pass the options params and values to sshf in order to accomplish a connection and mounting.

##

## Installing



The kmountssh, and its setup scripts were written and tested on ubuntu 18.04, it might work on debian and other ubuntu and linux versions


First clone  the repo:

	$ git clone https://github.com/lemyskaman/kmountssh.git


Then Run the setup script:

	$ cd kmountssh
	$ sh setup_ubuntu18.04.sh  

The setup script will try to install the dependencies using apt and then, it will create a soft link at /usr/bin to widely get access to kmountssh command, so you need to be part of sudoers. 

### Dependencies
You need: 
1. ssh 
2. fuse 
3. sshfs 
4. zenity (for gui prompting and messages) 

 Commands to allow kmountssh work correctly, you can install them by your own in case your not using ubuntu and/or the setup script fails.


## Usage
You might run kmountssh with its params to mount a remote path a common usage would be some thing like this if setup script was succesfull:
	
	$ kmountssh -h="host" -u="remoteUserName" -P="password" -t="remotePathToMount" -m="localPath"

or directly runnig the kmountssh script:

	$ ./kmountssh -h="host" -u="remoteUserName" -P="password" -t="remotePathToMount" -m="localPath"

Remember to change the host by the remote ip or hostname, remoteUserName, password, remothePathToMount and localPath values acording your needs.

Also you can always use kmountssh param --help to display a detailed list of available options.