#!/bin/bash
#
# author: likexi
# description:  定时查看ipvsadm是否存在，如果不存在则启动ipvsadm，
# 如果启动失败，则停止keepalived
#
status=$(ps aux|grep ipvsadm | grep -v grep | grep -v bash | wc -l)
if [ "${status}" = "0" ]; then
        service ipvsadm start
        status2=$(ps aux|grep ipvsadm | grep -v grep | grep -v bash |wc -l)
        if [ "${status2}" = "0"  ]; then
                /etc/init.d/keepalived stop
        fi
fi
