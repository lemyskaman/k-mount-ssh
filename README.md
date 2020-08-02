# kmountssh
A handy remote file system mounting tool

## Description
kmountssh is a bash script, that ease the use of the sshfs linux tool. 

In a common scenario you want to use sshfs to locally mount remote server paths, so you have to pass the options params and values to sshf in order to accomplish a connection and mounting.

This script basically will pass some default values in case they arent given to sshfs also will handle the creation of mounting directory in case they are not existing in your file tree, also it give you the option to pass a list of connections and choose one from the list to mount

##

## Installing



The kmountssh, and its setup scripts were written and tested on ubuntu 18.04, it might work on debian and other ubuntu and linux versions


First clone  the repo:

	$ git clone https://github.com/lemyskaman/kmountssh.git


Then Run the setup script:

	$ cd kmountssh
	$ sh setup_ubuntu18.04.sh  

The setup script will try to install the dependencies using apt, and then it will create a soft link at /usr/bin to widely get access to kmountssh command, so you need to be part of sudoers.

If setup_ubuntu18.04.sh dosent work for you, you can always install dependencies manually with your favourate package manager, give executing wrights to kmountssh:

	$ chmod +x kmountssh

### Dependencies
You need the fallowing commands (packages): 
1. ssh 
2. fuse 
3. sshfs 
4. zenity (for gui prompting and messages) 

 To allow kmountssh work correctly, you can install them by your own in case your not using ubuntu and/or the setup script fails.


## Usage
You might run kmountssh with its params to mount a remote path, a common usage would be some thing like this if setup script was succesfull:
	
	$ kmountssh -h=[host] -u=[remote user] -P=[password] -t=[remote path] -m=[local path]

or directly runnig the kmountssh script from the cloned or unziped project folder:

	$ ./kmountssh -h=[host] -u=[remote user] -P=[password] -t=[remote path] -m=[local path]

But the most recommended way is just to use it with 2 params like:

	$ kmountssh -h="[host]" -u="[remote user]"

The above will use "/media/[local username]/[host]" as the path to mount the remote fileystem

Remember to change the [host] by the remote ip or hostname, [remote user], [password], [remothe path] and [localPath] with values acording your needs.

Also you can always use kmountssh param --help to display a detailed list of available options params.
