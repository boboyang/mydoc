cd ~/Downloads
sudo apt-get update

sudo apt-get remove -y rhythmbox totem evolution ubuntuone*

sudo apt-get upgrade -y

sudo apt-get install -y tree gedit-plugins

#memcached
sudo apt-get install -y build-essential git-core libmemcached-dev libmemcached-tools

#python
sudo apt-get install -y python-dev python-setuptools python-virtualenv

#debs, download .deb first
DEBS="google-chrome-stable_16.0.912.77-r118311_i386.deb davmail_3.9.7-1870-1_all.deb skype-ubuntu_2.2.0.25-1_i386.deb
 bcompare-3.3.3.14128_i386.deb" # wine-thunder_0.6-2_all.deb"
sudo dpkg -i $DEBS
#install depend
sudo apt-get -f -y install 
sudo dpkg -i $DEBS

#java 
#sudo add-apt-repository "deb http://archive.canonical.com/ lucid partner"
#sudo apt-get update
#sudo apt-get install -y sun-java6-jdk
#sudo update-alternatives --config java

sudo apt-get install -y stardict freemind qterm audacious  thunderbird rar

#wget http://down4.zw91.com/down/stardict_ciku.zip
#tar xvf stardict_ciku.zip ~/.stardic/dic/

#mysql
sudo apt-get install -y openssh-server mysql-server 

#osdlyrics
sudo add-apt-repository ppa:osd-lyrics/ppa
sudo apt-get update
sudo apt-get install -y osdlyrics 
sudo apt-get -f install
sudo apt-get install -y osdlyrics

sudo apt-get autoremove
