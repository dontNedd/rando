#!/bin/bash
#Mar 30 2023
#nedd
#install steam and wine with updates


sudo apt update

sudo apt-get upgrade

sudo add-apt-repository multiverse

sudo apt update

sudo apt install steam

sudo dpkg --add-architecture i386

sudo add-apt-repository ppa:ubuntu-wine/ppa

sudo apt-get update

sudo apt-get install wine1.8

echo "Steam and Wine are now installed"
