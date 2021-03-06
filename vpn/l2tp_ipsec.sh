#!/bin/bash
if [ $# != 1 ] ; then
	echo "Usage: (sudo) sh $0 {init|start|stop}" 
	exit 1;
fi

VPN_ADDR=199.68.197.226
IFACE=ppp0

function getIP(){
	/sbin/ifconfig $1 |grep "inet "|awk '{print $2}'
}

function getGateWay(){
	/sbin/route -n |grep -m 1 "^0\.0\.0\.0" |awk '{print $2}'
}
function getVPNGateWay(){
	/sbin/route -n |grep -m 1 "$VPN_ADDR" |awk '{print $2}'
}

GW_ADDR=$(getGateWay)  

function init(){
	cp ./options.l2tpd.client /etc/ppp/
	cp ./ipsec.conf /etc/
    cp ./ipsec.secrets /etc/
	cp ./xl2tpd.conf /etc/xl2tpd/
}

function start(){
	sed -i "s/^lns =.*/lns = $VPN_ADDR/g" /etc/xl2tpd/xl2tpd.conf
	sed -i "s/plutoopts=.*/plutoopts=\"--interface=$IFACE\"/g" /etc/ipsec.conf
	sed -i "s/left=.*$/left=$(getIP $IFACE)/g" /etc/ipsec.conf
	sed -i "s/right=.*$/right=$VPN_ADDR/g" /etc/ipsec.conf
	sed -i "s/^.*: PSK/$(getIP $IFACE) $VPN_ADDR : PSK/g" /etc/ipsec.secrets
	/etc/rc.d/openswan start
	sleep 2    #delay to ensure that IPsec is started before overlaying L2TP

	/etc/rc.d/xl2tpd restart
	/usr/sbin/ipsec auto --up L2TP-PSK                        
	/bin/echo "c vpn-connection" > /var/run/xl2tpd/l2tp-control     
	sleep 2    #delay again to make that the PPP connection is up.

	route add $VPN_ADDR gw $GW_ADDR $IFACE
	route add default gw $(getIP $IFACE)
	route delete default gw $GW_ADDR
}

function stop(){
	/usr/sbin/ipsec auto --down L2TP-PSK
	/bin/echo "d vpn-connection" > /var/run/xl2tpd/l2tp-control
	/etc/rc.d/xl2tpd stop
	/etc/rc.d/openswan stop
	
	VPN_GW=$(getVPNGateWay)
	route delete $VPN_ADDR gw $VPN_GW $IFACE
	route add default gw $VPN_GW
}

$1
exit 0
