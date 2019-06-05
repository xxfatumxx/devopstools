#!/bin/bash

### DevOps tools installation script ###
##  Created by Oleksii Poberezhnyi    ##
##  Obviously should be run with sudo ##

## 1. Update current system
apt update && apt upgrade -y

## 2. Add all neccesary apt repositories

## 3. Install apps & tools
apt install \
7zip \
brave \
dbeaver \
dropbox \
f.lux \
firefox \
gcloudsdk \
git \
GoogleChrome \
openjdk8 \
keepass2 \
kubectl \ 
helm \
lightscreen \
xneur \
minikube \
notepadplusplus \
openvpn \
postman \
yaquake \
transmission \
skype \
slack \
teamviewer \
vagrant \
virtualbox \
vlc \
vscode \
mtr \
mc \
-y 

### End ###