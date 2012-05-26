pS  setuptools python2-virtualenv pychecker
<<<<<<< HEAD
=======
easy_install-2.7 -U distribute
easy_install-2.7 pycassa python-memcached pyramid pexpect
>>>>>>> 3148e613b51eb2444dad9199b8fb15b6f25fbf19

mkdir ~/my_env
cd ~/my_env/
virtualenv2 --no-site-packages ~/my_env
. ~/my_env/bin/activate

easy_install distribute
easy_install -U pycassa python-memcached pyramid w3lib  w3lib Scrapy


cd mydlink_v3/
../bin/python setup.py develop

deactivate
