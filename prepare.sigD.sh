sudo apt-get install autotools-dev gettext autoconf libjpeg-dev libpng-dev libxslt-dev
cd ~/Downloads/

#wget http://download.savannah.gnu.org/releases/libunwind/libunwind-0.99-beta.tar.gz
tar zxvf libunwind-1.0.tar.gz 
cd libunwind-1.0
./configure &&make&&sudo make install
cd ..

tar zxvf google-perftools-1.9.1.tar.gz 
cd google-perftools-1.9.1/
./configure && make && sudo make install
cd..

tar zxvf libffi-3.0.9.tar.gz 
cd libffi-3.0.9
./configure &&make&&sudo make install

<<<<<<< HEAD
tar zxvf glib-2.30.2.tar.gz 
cd glib-2.30.2
./configure &&make&&sudo make install
cd ..

tar jxvf postgresql-9.1.2.tar.bz2 
cd postgresql-9.1.2/
./configure &&make&&sudo make install
cd ..

#wget http://curl.haxx.se/download/curl-7.24.0.tar.bz2
tar jxvf curl-7.24.0.tar.bz2 
cd curl-7.24.0/
./configure && make && sudo make install
cd ..

tar zxvf libevent-2.0.16-stable.tar.gz 
cd libevent-2.0.16-stable/
patch -p1 <../2.0.10-stable-changes.patch 
./configure && make && sudo make install
cd ..

