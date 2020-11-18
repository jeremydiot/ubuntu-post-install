#!/bin/bash

function echo_message(){
    echo -e "\n\e[33m⚙️ $1 ⚙️\e[39m\n"
}

function apt_update(){
    sudo apt-get -y update
}

function apt_upgrade(){
	sudo apt-get -y upgrade
	sudo apt-get -y dist-upgrade
}

function apt_clean(){
    sudo apt-get -y autoremove
	sudo apt-get -y clean
}

function apt_install(){
    sudo apt-get -y install $1
}

function apt_repository(){
    sudo add-apt-repository -y $1
}

function dpkg_install(){
    sudo apt -y install $1
}

