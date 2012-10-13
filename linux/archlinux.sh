#remove first column
history -w tmp.txt
#vim tmp.txt
#:%s/^ //g

#iso source:
# http://mirrors.163.com/archlinux/iso/latest/

#usb creater
# linux: make sure usb plugged and umounted
# dd if=archlinux.iso of=/dev/sd[x]
# windows: 
# Linux Live USB Creator

# booter from sub and install from core iso
# Manually partition hard drives
#sda[x] 

#/boot 200M
#/root       
#/var
#/home       
#swap        mem*2
#df -m , to see effect later

#configure:

#/etc/rc.conf
#interface=wlan0

#/etc/locale.gen
#uncomment:
#en_US ISO-8859-1
#en_US.UTF-8 UTF-8
#zh_CN.GB18030 GB18030
#zh_CN.GBK GBK
#zh_CN.UTF-8 UTF-8
#zh_CN GB2312

#/etc/resolv.conf
# nameserver 219.141.136.10

#/etc/pacman.d/mirrolist
#uncomment 163 server

#reboot

# prepare wlan0
wpa_passphrase [router] [key] > /etc/wpa_supplicant.conf
wpa_supplicant -B -Dwext -i wlan0 -c /etc/wpa_supplicant.conf
dhcpcd wlan0
#test: ping www.baidu.com


pacman -S filesystem --force
rm /etc/profile.d/locale.sh 
pacman -Syu

vi /etc/pacman.conf
#add
#XferCommand = /usr/bin/aria2c -s 5 %u

#uncomment below:
#[multilib]
#Include = /etc/pacman.d/mirrorlist

pacman -Syy

# run `grep "pacman -S vim" pre_archlinux.sh`

#desktop
pacman -S wicd wicd-gtk rp-pppoe xorg xfce4 slim unrar zlib sudo consolekit ibus ibus-sunpinyin openntpd gamin dbus tree abs xlockmore thunar-volman ntfs-3g rdesktop
#power
#office
pacman -S aspell-en enchant freemind goldendict feh galculator gedit gedit-plugins txt2tags mupdf vim xfce4-screenshooter chmsee thunar-vfs-1 libreoffice-{common,base,calc,draw,impress,math,writer,gnome}

#internet
pacman -S aria2 skype chromium flashplugin icedtea-web thunderbird openssh bin32-wine 
#multimedia
pacman -S pulseaudio alsa-utils gstreamer0.10-plugins smplayer audacious mcomix ffmpeg

yaourt -S wine-thunder wqy-microhei pS ttf-arphic-uming briss qterm osdlyrics aliedit libXinerama libXft bcompare 

#dev
pacman -S base-devel cmake ccache wireshark-gtk ethtool sysstat gdb curl git svn gvfs-afc ctags cscope memcached redis libmemcached tk mysql nbtscan traceroute

#DAEMONS=(hwclock syslog-ng acpid dbus slim wicd crond)

#power management
vi /boot/syslinux/syslinux.cfg
# add resume=/path/to/swap/drive 

pacman -Rs vi
ln -s /usr/bin/vim /usr/bin/vi

mkdir -p $HOME/abs

export MANWIDTH=80
export EDITOR="/usr/bin/vim -p -X"
sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

adduser
#Login name for new user []: whille
#Additional groups (comma separated) []: audio,lp,optical,storage,video,wheel,games,power,scanner,users

# visudo
# uncomment wheel to enable sudo users
gpasswd -a "whille" wireshark

su whille
cp /etc/skel/.xinitrc ~/
chown whille ~/.xinitrc
echo "exec ck-launch-session dbus-launch --exit-with-session startxfce4" >> ~/.xinitrc

# set input method in ibus

#ssh setting
ssh-keygen -C 'whille@163.com' -t rsa

# develop
echo /usr/local/lib > /etc/ld.so.conf.d/local.conf 

