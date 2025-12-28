# Instructions to run website locally
- Edit /etc/hosts
`sudo vi /etc/hosts # 127.0.0.1 fian-ch.org www.fian-ch.org`
- Start XAMPP
- line 488 remove comment, set Include etc/extra/httpd-vhosts.conf
`sudo -S "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" --wait "/Applications/XAMPP/xamppfiles/etc/httpd.conf"`
- restart server
`sudo -S /Applications/XAMPP/xamppfiles/xampp restartapache`

# install XAMPP MacOsX
```
# 1) Installer-App aus dem DMG nach /Applications kopieren
sudo cp -R "/Volumes/XAMPP/xampp-osx-8.2.4-0-installer.app" "/Applications/"
# 2) Quarantine-Flag auf der kopierten App entfernen
sudo xattr -dr com.apple.quarantine "/Applications/xampp-osx-8.2.4-0-installer.app"
# 3) Installer starten
open "/Applications/xampp-osx-8.2.4-0-installer.app"
# 4) Nach der Installation (Manager ebenfalls ggf. ent-quarantänen)
sudo xattr -dr com.apple.quarantine "/Applications/XAMPP/manager-osx.app"
open "/Applications/XAMPP/manager-osx.app"
```