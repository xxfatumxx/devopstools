# Installing Chocolatey on your Windows 10

echo "Chocolatey setup has been started."
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
echo "Chocolatey setup has been finished."

echo "DevOps tools setup has been started."
# Every program should be on a separate line, so you can easily enable/disable them with '#'

choco install `
7zip `
awscli `
draft `
dropbox `
f.lux `
gcloudsdk `
git `
GoogleChrome `
Firefox `
jre8 `
keepass `
kubernetes-cli `
kubernetes-helm `
lightscreen `
Mahou `
mysql.workbench `
notepadplusplus `
openvpn `
postman `
putty `
qbittorrent `
skype `
slack `
teamviewer `
vagrant `
virtualbox `
vlc `
vscode `
winmtr-redux `
winscp `
-y

echo "DevOps tools setup has been finished."
