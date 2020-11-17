#!/bin/bash

function echo_action(){
    echo -e "\n\e[33m⚙️ $1 ⚙️\e[39m"
}

function apt_update(){
    echo_action "APT-UPDATE"
    # apt-get -y update
}

function apt_upgrade(){
    echo_action "APT-UPGRADE"
	# apt-get -y upgrade
	# apt-get -y dist-upgrade
}

function apt_clean(){
    echo_action "APT-CLEAN"
    # apt-get -y autoremove
	# apt-get -y clean
}

function apt_install(){
    echo_action "APT-INSTALL"$1
    # apt-get -y install $1
}

function apt_repository(){
    echo_action "ADD-APT-REPOSITORY"
    # add-apt-repository $1
}

