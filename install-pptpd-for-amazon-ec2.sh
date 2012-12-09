#!/bin/bash
# url: http://pank.org/scripts/
# description: PPTPD install script for Amazon EC2, Tested in Basic 32-bit/64-bit Amazon Linux AMI 2011.02.1 Beta
# comment: csh bash
# platform: linux
#
# You need to open TCP 1723 to allow PPTP dial-in
#
# Version: 0.5
# http://pank.org/blog/2011/08/pptpd-install-for-amazon-ec2.html

clear
yum -y update
yum -y install ppp make gcc gcc-c++ openssl-devel
wget http://nchc.dl.sourceforge.net/project/poptop/pptpd/pptpd-1.3.4/pptpd-1.3.4.tar.gz
tar zxf pptpd-1.3.4.tar.gz
cd pptpd-1.3.4
./configure
make install

cat<<EOF>/etc/pptpd.conf
option /etc/ppp/options.pptpd
#debug
localip 192.168.77.254
remoteip 192.168.77.1-10
EOF

cat<<EOF>/etc/ppp/options.pptpd
name vpn
refuse-pap
refuse-chap
refuse-mschap
require-mschap-v2
require-mppe-128
proxyarp
debug
lock
nobsdcomp
novj
novjccomp
nologfd
ms-dns 8.8.8.8
ms-dns 8.8.4.4
EOF

PASSWORD=`openssl rand -base64 6`
echo "vpnuser vpn $PASSWORD *" >> /etc/ppp/chap-secrets

cat<<EOF>/etc/init.d/pptpd
#!/bin/sh
#
# Startup script for pptpd
#
# chkconfig: - 85 15
# description: PPTP server
# processname: pptpd
# config: /etc/pptpd.conf

# Source function library.
. /etc/rc.d/init.d/functions
# See how we were called.
case "\$1" in
  start)
        echo -n "Starting pptpd: "
        if [ -f /var/lock/subsys/pptpd ] ; then
                echo
                exit 1
        fi
        daemon /usr/local/sbin/pptpd
        echo
        touch /var/lock/subsys/pptpd
        ;;
  stop)
        echo -n "Shutting down pptpd: "
        killproc pptpd
        echo
        rm -f /var/lock/subsys/pptpd
        ;;
  status)
        status pptpd
        ;;
  condrestart)
	if [ -f /var/lock/subsys/pptpd ]; then
		\$0 stop
		\$0 start
	fi
	;;
  reload|restart)
        \$0 stop
        \$0 start
        echo "Warning: a pptpd restart does not terminate existing "
        echo "connections, so new connections may be assigned the same IP "
        echo "address and cause unexpected results.  Use restart-kill to "
        echo "destroy existing connections during a restart."
        ;;
  restart-kill)
        \$0 stop
        killall pptpd > /dev/null 2>&1
        \$0 start
        ;;
  *)
        echo "Usage: $0 {start|stop|restart|restart-kill|status}"
        exit 1
esac

exit 0
EOF
chmod 755 /etc/init.d/pptpd

iptables -t nat -F POSTROUTING
iptables -t nat -A POSTROUTING -s 192.168.77.0/24 -j MASQUERADE

sed -i 's/^net.ipv4.ip_forward = 0/net.ipv4.ip_forward = 1/' /etc/sysctl.conf
sysctl net.ipv4.ip_forward=1

service iptables save

chkconfig iptables on
chkconfig pptpd on

service iptables start
service pptpd start

IP=`wget -qO- http://ip.pank.org/iponly`

if pidof pptpd > /dev/null ; then
   echo "VPN service is installed and started."
else
   echo "VPN service is installed but start failed."
fi
echo "
Your public IP is $IP
Your pubilc DNS is `host $IP | awk '{print $NF}'`
Your VPN username is vpnuser
Your VPN password is $PASSWORD
"
