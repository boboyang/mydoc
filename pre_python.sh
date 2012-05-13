pS  setuptools python2-virtualenv pychecker
easy_install-2.7 -U distribute
easy_install-2.7 pycassa python-memcached pyramid pexpect

mkdir ~/my_env

cd ~/my_env/
virtualenv2 --no-site-packages ~/my_env
. ~/my_env/bin/activate


cd mydlink_v3/
../bin/python setup.py develop



deactivate
