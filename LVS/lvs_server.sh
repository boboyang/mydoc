#!/bin/bash

#description:   LVS Master, 放置在/etc/init.d目录下

GW=172.18.195.254
VIP=172.18.195.99 

#real server
RIP1=172.18.195.112 
RIP2=172.18.195.18
RIP3=172.18.195.117 

. /etc/rc.d/init.d/functions # 如果提示权限不够，那么先在命令行执行: chmod 777 /etc/rc.d/init.d/functions

case "$1" in

start)
    echo "ipvsadm start..."	
	
    #清空 IPVS的内存数据 
    /sbin/ipvsadm -C
    /sbin/ipvsadm --set 30 5 60

    #设置虚拟IP和同步参数
    /sbin/ifconfig eth0:0 $VIP broadcast $VIP netmask 255.255.255.255 up
    /sbin/route add -host $VIP dev lo:0
    #开启WEB 8000 端口服务，并指向real server
    /sbin/ipvsadm -A -t $VIP:80 -s rr
    /sbin/ipvsadm -a -t $VIP:80 -r $RIP1:80 -g
    /sbin/ipvsadm -a -t $VIP:80 -r $RIP2:80 -g
    /sbin/ipvsadm -a -t $VIP:80 -r $RIP3:80 -g

    touch /var/lock/subsys/ipvsadm >/dev/null 2>&1        
    # set Arp
    /sbin/arping -I eth0 -c 5 -s $VIP $GW >/dev/null 2>&1
    #运行LVS
    /sbin/ipvsadm -ln
    ;;
	
stop)
    /sbin/ipvsadm -C
    /sbin/ipvsadm -Z
    ifconfig eth0:0 down
    route del $VIP  >/dev/null 2>&1
    rm -rf /var/lock/subsys/ipvsadm >/dev/null 2>&1
    /sbin/arping -I eth0 -c 5 -s $VIP $GW
    echo "ipvsadm stoped"
    ;;

restart)
    /sbin/ipvsadm -C
    /sbin/ipvsadm -Z
    ifconfig eth0:0 down
    route del $VIP  >/dev/null 2>&1
    rm -rf /var/lock/subsys/ipvsadm >/dev/null 2>&1
    /sbin/arping -I eth0 -c 5 -s $VIP $GW
    echo "ipvsadm stoped"
    echo "ipvsadm start..."	
	
    #清空 IPVS的内存数据 
    /sbin/ipvsadm -C
    /sbin/ipvsadm --set 30 5 60

    #设置虚拟IP和同步参数
    /sbin/ifconfig eth0:0 $VIP broadcast $VIP netmask 255.255.255.255 up

    /sbin/route add -host $VIP dev lo:0
    #设置LVS
    #开启WEB 8000 端口服务，并指向RIP1和RIP2的服务器
    /sbin/ipvsadm -A -t $VIP:80 -s rr
    /sbin/ipvsadm -a -t $VIP:80 -r $RIP1:80 -g
    /sbin/ipvsadm -a -t $VIP:80 -r $RIP2:80 -g
    /sbin/ipvsadm -a -t $VIP:80 -r $RIP3:80 -g

    touch /var/lock/subsys/ipvsadm >/dev/null 2>&1        
    # set Arp
    /sbin/arping -I eth0 -c 5 -s $VIP $GW >/dev/null 2>&1
    #运行LVS
    /sbin/ipvsadm -ln
    ;;

*) 
    echo "Usage: $0 {start|stop}" 

exit 1

esac

