#!/bin/bash

source /etc/os-release

if [ $ID == 'raspbian' ] || [ $ID == 'debian' ]; then
	echo "##########################################"
	echo "Last Updated:" $(date)
	echo "##########################################"

	sudo apt-get -y update
	echo "###########################"
	echo "Updated System Package List"
	echo "###########################"
	sudo apt-get -y dist-upgrade
	echo "##############################################"
	echo "Upgraded installed packages to latest versions"
	echo "##############################################"
	sudo apt-get -y install openssh-server
	echo "###################"
	echo "Upgraded ssh server"
	echo "###################"

elif [ $ID == 'fedora' ]; then
	echo "##########################################"
	echo "Last Updated:" $(date)
	echo "##########################################"

	sudo dnf -y update

elif [ $ID == 'rhel' ]; then
        echo "##########################################"
        echo "Last Updated:" $(date)
        echo "##########################################"

	sudo yum -y update

else
	echo "Unknown Distro: $ID"

fi
