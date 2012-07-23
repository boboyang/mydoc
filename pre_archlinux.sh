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
wpa_passphrase mydlink01 dlink930 > /etc/wpa_supplicant.conf
wpa_supplicant -B -Dwext -i wlan0 -c /etc/wpa_supplicant.conf
dhcpcd wlan0
#test: ping www.baidu.com


pacman -S filesystem --force
rm /etc/profile.d/locale.sh 
pacman -Syu

#speed up 
pacman -S aria2

vi /etc/pacman.conf
#add
#XferCommand = /usr/bin/aria2c -s 5 %u

#uncomment below:
#[multilib]
#Include = /etc/pacman.d/mirrorlist

pacman -Syy

# run `grep "pacman -S vim" pre_archlinux.sh`

#desktop
pacman -S wicd wicd-gtk rp-pppoe xorg xfce4 slim zlib sudo consolekit ibus ibus-sunpinyin wqy-bitmapfont wqy-zenhei openntpd gamin dbus tree abs xlockmore xarchiver thunar-archive-plugin thunar-volman ntfs-3g
#power
pacman -S cpufrequtils acpid xfce4-power-manager xfce4-battery-plugin
#office
pacman -S freemind stardict feh scrot galculator gedit mupdf vim 
#internet
pacman -S skype chromium flashplugin icedtea-web thunderbird openssh
#multimedia
pacman -S pulseaudio alsa-utils gstreamer0.10-plugins smplayer audacious gvfs-afc 
#dev
pacman -S base-devel cmake ccache wireshark-gtk ethtool sysstat gdb curl git   

yaourt -S briss

sed -i 's/^MODULES=()/^MODULES=(acpi-cpufreq cpufreq_ondemand cpufreq_powersave)/g' /etc/rc.conf 
#
#DAEMONS=(hwclock syslog-ng acpid dbus @cpufreq slim wicd crond)

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
#Additional groups (comma separated) []: audio,lp,optical,storage,video,wheel,games,power,scanner

# visudo
# uncomment wheel to enable sudo users
gpasswd -a "whille" wireshark

su whille
cp /etc/skel/.xinitrc ~/
chown whille ~/.xinitrc
echo "exec ck-launch-session dbus-launch --exit-with-session startxfce4" >> ~/.xinitrc

#alias
# ~/.bashrc
alias la='ls -a --color=auto'
alias ll='ls -aoth --color=auto'
alias ls='ls --color=auto'
alias pQs='sudo pacman -Qs'
alias pS='sudo pacman -S'
alias pU='sudo pacman -U'
alias txC='iconv -f gb2312 -c -t utf-8'

# set input method in ibus

git config --global user.email "whille@163.com"
git config --global user.name "whille"

#qterm
cd ~/abs/
tar zxvf qterm.tar.gz 
cd qterm
makepkg -s
pU qterm-[TAB]

#osdlyrics
cd ~/abs/
tar zxvf osdlyrics.tar && cd osdlyrics
makepkg -s
pU osdlyrics-0.4.2-2-i686.pkg.tar.xz

#ssh setting
ssh-keygen -C 'whille@163.com' -t rsa

# develop
echo /usr/local/lib > /etc/ld.so.conf.d/local.conf 

#hot key
#Alt + F2: run
#Alt + F8:resize window
#Alt + F9:min window
#Alt + F10:max window

#xflock4: lock screen
#sudo pm-hibernate
#sudo pm-suspend
#Ctrl + T: open new tab
#Ctrl + W: close tab
#Ctrl + Page up/Page down
#Ctrl + L: clear term text

# sshd,  root
#rc.d {start|stop|restart} sshd
# ssh client
#$ ssh -p port user@server-address

#xunlei
pS bin32-wine 
yaourt -S wine-thunder


