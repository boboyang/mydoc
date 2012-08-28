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

# stop
#uwsgi --stop uwsgi.pid
#reload
#uwsgi --reload uwsgi.pid

#system tunning
sudo -i
echo 3000 > /proc/sys/net/core/somaxconn

#start
uwsgi --ini-paste-logged mypyramid/production.ini &
sudo cp ~/my_env/mypyramid/tools/uwsgi.nginx.conf /etc/nginx/nginx.conf
sudo /etc/init.d/nginx restart

# test
# curl http://localhost
# nginx log:
#    /var/log/nginx/
    

