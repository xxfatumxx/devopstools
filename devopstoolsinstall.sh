#!/bin/bash

### DevOps tools installation script ###
##  Created by Oleksii Poberezhnyi    ##
##  Obviously should be run with sudo ##

## 1. Update current system
apt update && apt upgrade -y

## 2. Add all neccesary apt repositories

# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Update repositories
apt update

## 3. Install apps & tools
apt install \
firefox \
git \
google-chrome-stable \
openjdk-8-jre \
keepass2 \
gnome-screenshot \
gdebi-core \
remmina \
gxneur \
guake \
transmission \
vagrant \
virtualbox \
vlc \
mtr \
mc \
-y

## 4. Snap installation

SNAPS=" 
brave
p7zip-desktop
minikube
notepad-plus-plus
postman
"

for SNAP in ${SNAPS}; do
snap install $SNAP
done

SNAPS-CLASSIC="
kubectl
helm
google-cloud-sdk
skype
slack
code
"

for SNAP in ${SNAPS-CLASSIC}; do
snap install $SNAP --classic
done

SNAPS-EDGE="
dbeaver-ce
fluxgui
"

for SNAP in ${SNAPS-EDGE}; do
snap install $SNAP --edge
done

## 5. Manual installation

# Team Viewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
gdebi teamviewer*.deb

### End ###