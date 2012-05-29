pS  setuptools python2-virtualenv pychecker

mkdir ~/my_env
cd ~/my_env/
virtualenv2 --no-site-packages ~/my_env
. ~/my_env/bin/activate

easy_install -U distribute
easy_install -U pycassa pyramid pexpect w3lib Scrapy pyrex
pip install http://projects.unbit.it/downloads/uwsgi-lts.tar.gz

cd mydlink_v3/
../bin/python setup.py develop


#
deactivate
