#!/bin/bash -eu

######
# prepare
######

source ./functions.sh

LOG_FILE="ubuntu-post-install.log"
TEMP_FOLDER="temp"

if [ -d $TEMP_FOLDER ]; then rm -r $TEMP_FOLDER; fi

touch $LOG_FILE
mkdir $TEMP_FOLDER

######
# functions
######

function start_install(){
    set +e # Disable exit on non 0
    echo -e "\n\e[34mℹ EXECUTE SCRIPT ℹ\e[39m $1\n"
}

function end_install(){
    set -e # Enable exit on non 0
    local status=""
    if [ $2 -gt 0 ]; then
        status=$status"\n\e[31m✖️ INSTALLATION INCOMPLETE ✖️\e[39m $1"
    else
        status=$status"\n\e[32m✔️ INSTALLATION COMPLETE ✔️\e[39m $1"
    fi
    echo -e $status""
}

function write_log(){
    current_date=$(date '+%Y/%m/%d %H:%M:%S')

    local status=""

    if [ $2 -gt 0 ]; then
        status="KO"
    else
        status="OK"
    fi

    echo "[$current_date] $1 $status" >> $LOG_FILE
}

######
# install
######

apt_update
apt_upgrade
apt_clean

#### SOFWARE INSTALL
for file in ./software/*
do
    if [ -f $file ]; then
        start_install $file
        output=$(./$file) #execute sub script
        status=$?
        echo -e $output
        end_install $file $status
        write_log $file $status
    fi
done


######
# configuration
######

cat ./terminal/.bashrc >> ~/.bashrc

cp  ./terminal/.bash_aliases ~/

ssh-keygen -t rsa -f ~/.ssh/id_rsa -q -N ""

## extract
# dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf

## import
dconf load /org/gnome/terminal/legacy/profiles:/ < ./dconf/gnome-terminal-profiles.dconf

echo_message "computer must be restarted"