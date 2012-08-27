#install pip:
curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
sudo python get-pip.py

#virtualenv
sudo pip install virtualenv
mkdir -p ~/my_env && cd ~/my_env/
virtualenv ~/my_env
alias ipY='. ~/my_env/bin/activate'
ipY

#pyramid
pip install pyramid

#cd some-project
#python setup.py develop

#nginx
sudo yum -y install make glibc-devel gcc openssl openssl-devel ncurses ncurses-devel python-devel libxml2 libxml2-devel nginx

pip install uwsgi

# start uwsgi
uwsgi --ini-paste xxx/production.ini
# stop
#uwsgi --stop log/uwsgi.pid
#reload
#uwsgi --reload log/uwsgi.pid
