#remove first column
history | awk '{$1="";print}'>tmp.txt
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

#MBA, GRUB or syslinux

#reboot

# prepare wlan0
wpa_passphrase TP-LINK 506201953 > /etc/wpa_supplicant.conf
wpa_supplicant -B -Dwext -i wlan0 -c /etc/wpa_supplicant.conf
dhcpcd wlan0
#ping www.baidu.com


pacman -S filesystem --force
rm /etc/profile.d/locale.sh
pacman -Syu

#speed up 
pacman -S reflector aria2
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
reflector -l 5 --sort rate --save /etc/pacman.d/mirrorlist

#vim /etc/pacman.conf
#add
#XferCommand = /usr/bin/aria2c -s 5 %u

#uncomment below:
#[multilib]
#Include = /etc/pacman.d/mirrorlist

pacman -Syy

#use aria2c individually
#aria2c %urlfile
#man aria2c
#ex: -s 5 -o -c

#network & desktop
pacman -S vim wicd wicd-gtk rp-pppoe xorg xfce4 slim zlib sudo consolekit ibus ibus-sunpinyin wqy-bitmapfont wqy-zenhei  openntpd cpufrequtils acpid gamin dbus xfce4-power-manager xfce4-battery-plugin tree abs openssh xlockmore multilib 

#multimedia
pacman -S pulseaudio alsa-utils gstreamer0.10-base-plugins gstreamer0.10-bad gstreamer0.10-ffmpeg gstreamer0.10-good smplayer audacious

#office
pacman -S gvfs-afc xarchiver thunar-archive-plugin thunar-volman chromium curl freemind git skype stardict feh

#develop
pacman -S base-devel wireshark-gtk setuptools python2-virtualenv ethtool sysstat
gpasswd -a "whille" wireshark

#vi /etc/rc.conf
#MODULES=(acpi-cpufreq cpufreq_ondemand cpufreq_powersave )
#
#DAEMONS=(hwclock syslog-ng acpid dbus @cpufreq slim wicd crond @openntpd)

adduser
#Login name for new user []: whille
#Additional groups (comma separated) []: audio,lp,optical,storage,video,wheel,games,power,scanner

# visudo
# uncomment wheel to enable sudo users

su whille
cp /etc/skel/.xinitrc ~/
chown whille ~/.xinitrc

#exec ck-launch-session dbus-launch --exit-with-session startxfce4

#power management
#su
vi /boot/syslinux/syslinux.cfg
# add resume=/path/to/swap/drive 

visudo
#username  ALL = (ALL) NOPASSWD: /usr/sbin/pm-hibernate
#username  ALL = (ALL) NOPASSWD: /usr/sbin/pm-suspend

#sudo pm-hibernate
#sudo pm-suspend

pacman -Rs vi
ln -s /usr/bin/vim /usr/bin/vi
export MANWIDTH=80
export EDITOR="/usr/bin/vim -p -X"
sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# set input method in ibus

#generate abs tree in /var/abs
abs
# user abs folder
mkdir -p $HOME/abs

#qterm
cd ~/abs/
tar zxvf qterm.tar.gz 
cd qterm
makepkg -s
sudo pacman -U qterm-XXX

#osdlyrics
cd ~/abs/
tar zxvf osdlyrics.tar && cd osdlyrics
makepkg -s
sudo pacman -U osdlyrics-0.4.2-2-i686.pkg.tar.xz

#ssh setting
ssh-keygen -C 'whille@163.com' -t rsa

#python
ln -s /usr/bin/python2 /usr/bin/python
easy_install virtualenv
mkdir ~/my_env
virtualenv --no-site-packages ~/my_env

source ~/my_env/bin/activate
pip install pyramid
#...
deactivate


#hot key
sudo pacman -S  xscreensaver xlockmore
xscreensaver
#xflock4

#Alt + F2: run
#xflock4: lock screen




