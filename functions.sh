#!/bin/bash

function echo_message(){
    echo -e "\n\e[33m⚙️ $1 ⚙️\e[39m\n"
}

function apt_update(){
    apt-get -y update
}

function apt_upgrade(){
	apt-get -y upgrade
	apt-get -y dist-upgrade
}

function apt_clean(){
    apt-get -y autoremove
	apt-get -y clean
}

function apt_install(){
    apt-get -y install $1
}

function apt_repository(){
    add-apt-repository -y $1
}

function dpkg_install(){
    apt -y install $1
}

