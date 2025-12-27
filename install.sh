sudo -S sh -c 'echo "127.0.0.1 fian-ch.org www.fian-ch.org" >> /etc/hosts'
brew install mkcert nss
mkcert -install
sudo -S mkdir -p /Applications/XAMPP/xamppfiles/etc/ssl/localcerts

sudo -S mkcert \
  -cert-file /Applications/XAMPP/xamppfiles/etc/ssl/localcerts/fian-ch.org.pem \
  -key-file  /Applications/XAMPP/xamppfiles/etc/ssl/localcerts/fian-ch.org-key.pem \
  fian-ch.org www.fian-ch.org

sudo -S "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" --wait "/Applications/XAMPP/xamppfiles/etc/httpd.conf"
sudo -S "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" --wait "/Applications/XAMPP/xamppfiles/etc/extra/httpd-vhosts.conf"

sudo -S /Applications/XAMPP/xamppfiles/xampp restartapache

sudo chown -R peterstroessler:daemon "/Applications/XAMPP/xamppfiles/htdocs/webseite2022.fian-ch.org"

sudo find "/Applications/XAMPP/xamppfiles/htdocs/webseite2022.fian-ch.org" -type d -exec chmod 755 {} \;
sudo find "/Applications/XAMPP/xamppfiles/htdocs/webseite2022.fian-ch.org" -type f -exec chmod 644 {} \;

sudo chmod -R 775 "/Applications/XAMPP/xamppfiles/htdocs/webseite2022.fian-ch.org/public/wp-content"

sudo /Applications/XAMPP/xamppfiles/xampp restartapache

sudo vi /etc/hosts # 127.0.0.1 fian-ch.org www.fian-ch.org
# Zeile 488 httpd.conf vhosts wieder einkommentieren