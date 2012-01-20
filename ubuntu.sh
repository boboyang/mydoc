cd ~/Downloads
sudo apt-get install -y tree gedit-plugins
sudo apt-get install -y git

#memcached
sudo apt-get install -y build-essential libmemcached-dev
sudo apt-get install -y memcached libmemcached-tools
gsettings set org.gnome.gedit.preferences.encodings auto-detected "['UTF-8','GB18030','GB2312','GBK','BIG5','CURRENT','UTF-16']"

#python
sudo apt-get install -y python2.7-dev python-setuptools python-virtualenv

#mysql
sudo apt-get install -y mysql-server 

#redis
sudo apt-get install -y tcl8.5

wget http://redis.googlecode.com/files/redis-2.4.4.tar.gz
tar xzf redis-2.4.4.tar.gz
cd redis-2.4.4
# readme
make && sudo make install

#chrome
#download .deb first
DEBS="google-chrome-stable_current_i386.deb bcompare-3.3.3.14128_i386.deb wine-thunder_0.6-2_all.deb"
sudo dpkg -i $DEBS
#install depend
sudo apt-get -f -y install 
sudo dpkg -i $DEBS

#java 
sudo add-apt-repository "deb http://archive.canonical.com/ lucid partner"
sudo apt-get update
sudo apt-get install -y sun-java6-jdk
sudo update-alternatives --config java

#osdlyrics
sudo add-apt-repository ppa:osd-lyrics/ppa
sudo apt-get update
sudo apt-get install osdlyrics
sudo apt-get -f install
sudo apt-get install osdlyrics

sudo apt-get install -y stardict freemind skype qterm
wget http://down4.zw91.com/down/stardict_ciku.zip
tar xvf stardict_ciku.zip ~/.stardic/dic/

#wine

sudo apt-get autoremove
