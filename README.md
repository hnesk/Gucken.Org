#Install

For a working installation there's some work to be one, sorry:

```bash
git clone git://github.com/hnesk/Gucken.Org.git 
cd Gucken.Org
mysql -u root -p -e "CREATE DATABASE gucken_org CHARACTER SET utf8 COLLATE utf8_unicode_ci;"
cp Configuration/Settings.yaml.example Configuration/Settings.yaml
vi Configuration/Settings.yaml
./flow3 help 
./flow3 doctrine:create
./flow3 account:add username passwort Administrator User
```
