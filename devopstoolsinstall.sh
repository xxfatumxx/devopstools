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

# Docker CE
apt-get install \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"

# Update repositories
apt update

## 3. Install apps & tools
apt install \
firefox \
docker-ce \
docker-ce-cli \
containerd.io \
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

SNAPSCLASSIC="
kubectl
helm
aws-cli
google-cloud-sdk
skype
slack
code
"

for SNAP in ${SNAPSCLASSIC}; do
snap install $SNAP --classic
done

SNAPSEDGE="
dbeaver-ce
fluxgui
"

for SNAP in ${SNAPSEDGE}; do
snap install $SNAP --edge
done

## 5. Manual installation

# Team Viewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
gdebi -n teamviewer*.deb

## 6. Customization

# Changing favourite apps

dconf write /org/gnome/shell/favorite-apps ['brave_brave.desktop', 'google-chrome.desktop', 'firefox.desktop', 'thunderbird.desktop', 'org.gnome.Terminal.desktop', 'guake.desktop', 'code_code.desktop', 'notepad-plus-plus_notepad-plus-plus.desktop', 'org.remmina.Remmina.desktop', 'postman_postman.desktop']

### End ###