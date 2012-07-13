#!/bin/sh

#give no password SSH authority to monitor  

# use local pkg
pip install --no-index -f file:/root/pyPkg4monitor thrift pycassa python-memcached pycrypto ssh fabric

#src build activemq-cpp
yum install automake autoconf libtool doxygen graphviz
yum install e2fsprogs-devel cppunit-devel python-devel boost-devel apr-devel apr-util-devel

#autoconf 2.61
wget http://files.directadmin.com/services/custombuild/autoconf-2.61.tar.gz
tar xzf autoconf-2.61.tar.gz
cd autoconf-2.61
./configure --prefix=/usr
make && make install

#activemq
#src: http://code.google.com/p/pyactivemq/wiki/Building
#svn co https://svn.apache.org/repos/asf/activemq/activemq-cpp/branches/activemq-cpp-3.0.x activemq-cpp
#svn co http://pyactivemq.googlecode.com/svn/trunk pyactivemq

cd activemq-cpp && mkdir -p config && ./autogen.sh
#modify apr version to 1.4 if needed
#APR_VER_REGEXES="1\.2\.[0-9] 1\.3\.1[0-9] "
#APU_VER_REGEXES="1\.2\.[0-9] 1\.3\.1[0-9] "

#see apr version: /usr/bin/apr-1-config
./configure --prefix=/opt/activemq-cpp && make && make install

cd ../pyactivemq && python setup.py install
#python setup.py build 
#python setup.py sdist

ln -s /opt/python/bin/fab /usr/bin/

#crontab
if [ ! -f /etc/cron.hourly/evt_monitor ]; then 
    /usr/bin/install -c -m 755 evt_monitor /etc/cron.hourly/evt_monitor
fi
