sudo apt-get install libglib2.0-dev libpq-dev postgresql

cd ~/Downloads/

tar zxvf libevent-2.0.16-stable.tar.gz 
cd libevent-2.0.16-stable/
./configure && make && sudo make install

tar zxvf google-perftools-1.9.1.tar.gz 
cd google-perftools-1.9.1/
./configure && make && sudo make install




