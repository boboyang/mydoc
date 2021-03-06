cd ~/Downloads/
sudo apt-get install ctags cscope
sudo apt-get install -y lua5.1-dev

#wget http://fossies.org/unix/misc/vim-7.3.tar.bz2
#wget https://github.com/larrupingpig/vimgdb-for-vim7.3/tarball/master -O vimgdb-for-vim7.3.tar.gz
tar xjvf  vim-7.3.tar.bz2  -C /tmp
tar xzvf  vimgdb-for-vim7.3.tar.gz  -C /tmp
cd /tmp
patch  -p0 < larrupingpig-vimgdb-for-vim7.3-bd07a6c/vim73.patch
cd vim73/src
make distclean
./configure --enable-pythoninterp --enable-cscope --enable-gdb --enable-multibyte  --enable-fontset
make && sudo make install
[ ! -d "~/.vim" ] && mkdir -p "~/.vim"
#cp -rf /tmp/larrupingpig-vimgdb-for-vim7.3-bd07a6c/vimgdb_runtime/*  ~/.vim


