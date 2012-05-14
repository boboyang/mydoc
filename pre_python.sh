pS  setuptools python2-virtualenv pychecker

mkdir ~/my_env
cd ~/my_env/
virtualenv2 --no-site-packages ~/my_env
. ~/my_env/bin/activate

easy_install distribute
easy_install -U pycassa python-memcached pyramid w3lib  w3lib Scrapy


cd mydlink_v3/
../bin/python setup.py develop

deactivate
