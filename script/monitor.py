#!/usr/bin/python

conffile="evtdeploy.ini"  

import traceback
import mailer
import sys

RUN_FAB = "fab -f check_remote.py --hide=status,running,user,stdout,abort"
_logger = None

#decarator
def check_ip_comp(f):           # func
    def _(cf,*a, **kw):         # func args
        comp=f.func_name.split('check_')[1]
        ips=cf.get(comp,'host').split(',')
        for ip in ips:
            if ip and comp:
                check_computer(ip,comp)
        r = f(cf,*a, **kw) 
        return r
    _.func_name = f.func_name
    return _


import os

def check_computer(ip, comp):
    _logger.debug('Verifying "%s" at %s', comp, ip)
    cmd_line = '%s -H root@%s check_os:%s' % (RUN_FAB, ip, comp)
    _logger.debug('Executing "%s"......', cmd_line)
    res = os.system(cmd_line)
    if(0 != res):
        raise Exception('Problem occurs when checking "%s" running at %s' % (comp, ip))
    _logger.debug('"%s" is running at %s', comp, ip)

import memcache

@check_ip_comp
def check_memcached(cf):
    modname='memcached'
    (host,port,path)=[cf.get(modname,i) for i in ('host','port','path')]
    mc = memcache.Client(["%s:%s" %(host,port)], debug=0)
    stat=mc.get_stats()
    if(len(stat)==0):
		raise Exception("server not available")
    version = stat[0][1]['version']
    #restart(host,modname,path)
    
    
import pycassa
from pycassa.cassandra.c10.ttypes import NotFoundException
from pycassa.index import *


@check_ip_comp
def check_cassandra(cf):
    section = 'cassandra'
    (ip, port) = [cf.get(section, i) for i in ('host', 'port')]
    servers = map(lambda s: s + ':%s' % port, ip.split(','))
    cas_keyspace = cf.get(section, 'keyspace')
    _logger.debug('Establishing the connection to Cassandra at %s (port=%s)......', ip, port)
    pool = pycassa.ConnectionPool(cas_keyspace, server_list=servers, timeout=4)
    for i in ['event_timeline', 'alert_timeline']:
        timeline = cf.get(section, i)
        _logger.debug('Access Cassandra column family(%s) at %s (port=%s)', timeline, ip, port)
        col = pycassa.ColumnFamily(pool, timeline)
        if not col:
            raise Exception('Problem occurs when read the column family %s', timeline)
        assert col.timestamp() > 0


import gabriel.NexusService
from gabriel import *
from thrift import Thrift
from thrift.transport import TSocket, TTransport
from thrift.protocol import TBinaryProtocol

@check_ip_comp
def check_nexus(cf):
    params = [cf.get('nexus', i) for i in  ('host', 'port', 'appid')]
    transport = TSocket.TSocket(params[0], int(params[1]))
    transport = TTransport.TFramedTransport(transport)
    protocol = TBinaryProtocol.TBinaryProtocol(transport)
    client = NexusService.Client(protocol)
    transport.open()
    assert client.isAppRegistered(params[2])
    transport.close()

def send2gsenderbyNexus(cf, msg):
    params = [cf.get('nexus', i) for i in  ('host', 'port')]
    _logger.debug('Delieving the msg to ActiveMQ via Nexus at %s:%s', params[0], params[1])
    transport = TSocket.TSocket(params[0], int(params[1]))
    transport = TTransport.TFramedTransport(transport)
    protocol = TBinaryProtocol.TBinaryProtocol(transport)
    client = NexusService.Client(protocol)
    transport.open()
    res = client.sendTxtMsgToGsenderQueue(msg)
    transport.close()
    return res
    
import urllib2

"""
@check_ip_comp
def check_signalingd(cf):
    params=[cf.get('signalingd',i) for i in ('host','port','exist_mac')]
    url_str= "http://%s:%s" %tuple(params[:2]) 
    res=urllib2.urlopen(url_str).read()
    expectstr='It works'
    assert 0 <= res.find(expectstr)
"""

import json


def check_mydlinkNBS(cf):
    modname = 'mydlinkNBS'
    params = [cf.get(modname, i) for i in ('host', 'port', 'appid', 'priv')]
    path = cf.get(modname, 'path')
    _logger.debug('Verifying "NBS" at %s', cf.get(modname, 'host'))
    url_str = "http://%s:%s/oauth/access_token?app_id=%s&priv_code=%s&grant_type=app_credential" % tuple(params)
    _logger.debug('Executing "%s"', url_str)
    try:
        res = urllib2.urlopen(url_str).read()
        d = json.loads(res)
        for i in ('access_token', 'expires_in'):
            assert i in d['data'].keys()
        _logger.debug('NBS checking finished')
    except urllib2.URLError as ue:
        _logger.error('Problem occurs when access NBS (reason=%s)', ue.reason)
        raise Exception('Cannot reach NBS via %s (reasone=%s)' % (url_str, ue.reason))
    except urllib2.HTTPError, e:
        for err in ('err500', 'err502'):
            if err.code == int(err.lstrip('err')):
                raise Exception("%d:%s, %s" % (e.code, e.read(), cf.get(modname, err)))
    #restart(params[0],modname,path)


def check_log(host, logfile, msg):
    res = os.popen('%s -H root@%s get_log:"%s","%s"' % (RUN_FAB, host, logfile, msg)).read()
    if 0 >= len(res):
        raise Exception("log not found in ip: %s" % host)


import socket
import time


def check_morpheus(cf, modname):
    def send_event(host, port):
        s = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
        s.connect((host,int(port)))
        msg='<%s> %f.' %(pri,time.time())
        s.send('%d %s' %(len(msg), msg))
        s.close() 
        return msg
        
    host,port,pri,logfile=[ cf.get(modname,i) for i in  ('host','port','pri','logpfile')]
    msg=send_event(host,port)
    time.sleep(float(cf.get(modname,'sleeptime')))    #wait for Morpheus log written
    check_log(host,logfile,msg)

@check_ip_comp
def check_morpheusalert(cf):
    check_morpheus(cf,'morpheusalert')

@check_ip_comp
def check_morpheusevent(cf):
    check_morpheus(cf,'morpheusevent')
   
"""
from pyactivemq import ActiveMQConnectionFactory

def send_amqmsg(host,port,queuename,msg, varify=False):
    url = 'tcp://%s:%s' %(host,port)
    f = ActiveMQConnectionFactory(url)
    conn=f.createConnection()
    session = conn.createSession()
    queue = session.createQueue(queuename)
    txtmsg = session.createTextMessage(msg)
    producer = session.createProducer(queue)
    if varify:
        consumer = session.createConsumer(queue)
    del session
    conn.start()
    del conn
    producer.send(txtmsg)
    if varify:
        rev = consumer.receive(len(msg)+1)
        assert rev.text==msg

from tools import now_str

@check_ip_comp    
def check_activemq(cf):
    (host,port,queuename)=[cf.get('activemq',i) for i in ('host','port','queuename')]
    msg =now_str()
    send_amqmsg(host,port,queuename,msg,True)
"""

@check_ip_comp
def check_gsender(cf):
    modname = 'gsender'
    (host, port, queuename, path) = [cf.get(modname, i) for i in ('host', 'port', 'queuename', 'path')]

    msg = 'monitor::%f' % (time.time())
    if not send2gsenderbyNexus(cf, msg):
        _logger.error('Problem occurs when Nexus sends the msg to ActiveMQ')
        raise Exception("Nexus cannot send msg to ActiveMQ when testing gsender at %s" % host)

    time.sleep(float(cf.get(modname, 'sleeptime')))
    logfiles = [cf.get('gsender', i) for i in ('logfile1', 'logfile2')]
    err = True
    for logfile in logfiles:
        try:
            _logger.debug('Scan the log file(%s) at %s for msg(%s)', logfile, host, msg)
            check_log(host, logfile, msg)
            err = False
        except Exception, e:
            pass
    if err:
        raise Exception("log not found in ip: %s" % host)
    #restart(host,modname,path)

"""
def reachable(modname):
    print 'TBD: reachable'
    return True
            
def restart(host,modname,path):
    if not reachable(modname):
        raise Exception ('unreachable')
    res=os.system('%s -H root@%s restart_%s:"%s"' %(RUN_FAB,host,modname,path))
    if(0 != res): 
        raise Exception("error restart %s, in %s" %(modname,host))        
"""

import ConfigParser


def init_conf():
    cf = ConfigParser.ConfigParser()
    assert 1 == len(cf.read(conffile))
    return cf


def notify(cf, fname):
    comp = fname[fname.find('_') + 1:]
    (ip, port) = [cf.get(comp, i) for i in ('host', 'port')]
    txt = """
    Component:  %s
    IP:         %s
    Port:       %s

    """ % (comp, ip, port)
    txt += traceback.format_exc()
    #_logger.exception(Exception(txt))
    params = [cf.get('Mailer', i) for i in ('From', 'Passwd', 'Server', 'Tos', 'Subject')]
    params.append(txt)
    mailer.send(*params)
    sendSMS()

def sendSMS():
    """TBD..."""
    pass    


import logging
import logging.handlers


def setupLogger(flname, level=logging.INFO, fmt='[%(asctime)s] [%(levelname)s]%(message)s'):
    global _logger
    _logger = logging.getLogger(sys.argv[0])
    _logger.setLevel(logging.DEBUG)
    filelog = logging.handlers.RotatingFileHandler(flname, mode='a', maxBytes=1048576, backupCount=3)
    consolelog = logging.StreamHandler(sys.stdout)
    filelog.setLevel(level)
    consolelog.setLevel(logging.DEBUG)
    formatter = logging.Formatter(fmt)
    filelog.setFormatter(formatter)
    consolelog.setFormatter(formatter)
    _logger.addHandler(filelog)
    _logger.addHandler(consolelog)


from optparse import OptionParser
import string


def main():
    parser = OptionParser(usage='Usage: monitor [options]')
    parser.add_option('-t', '--testonly', action = 'store_true', dest = 'testonly', default = True,
        help = 'conduct the check only without further action')
    parser.add_option('-m', '--monitor', action = 'store_false', dest = 'testonly',
        help = 'conduct the monitoring procedure with e-mail notification and problem recovery')
    parser.add_option('-c', '--component',
        action = 'store', type = 'string', dest = 'component', default = None,
        help = 'specify the component to verify.\t\t\t' +
                'Available: morpheusalert,morpheusevent,memcached,nexus,mydlinkNBS,gsender,cassandra')
    parser.add_option('-l', '--loglevel',
        action = 'store', type = 'int', dest = 'loglevel', default = 6,
        help = 'select the log level for the log file (0~7)')
    (options, args) = parser.parse_args()
    if options.loglevel < 0 or options.loglevel > 7:
        parser.print_help()
        exit(-1)

    logLevel = [logging.CRITICAL, logging.CRITICAL, logging.CRITICAL,
                logging.ERROR, logging.WARNING, logging.WARNING,
                logging.INFO, logging.DEBUG]
    selflogfile = "./%s.log" % (sys.argv[0].split('/')[-1][:-3])
    setupLogger(flname=selflogfile, level=logLevel[options.loglevel])
    cf = None
    checks = [
        check_morpheusalert,
        check_morpheusevent,
        check_memcached,
        check_nexus,
        check_mydlinkNBS,
        check_gsender,
        check_cassandra,
#        check_signalingd,
#        check_activemq,
    ]
    cf = init_conf()
    if options.component:
        check_name = 'check_' + string.lower(options.component)
        for fn in checks:
            if string.lower(fn.func_name) == check_name:
                checks=[fn]
                break
        else:
            _logger.debug('Unknown Component:%s', options.component)
            exit(-2)
    else:
        _logger.debug('Start the full checking process......')
        
    _logger.debug('Options: %s', options)
    err = False
    for fn in checks:
        try:
            print '-----------------------------------------------------'
            _logger.debug('Executing "%s"......', fn.func_name)
            fn(cf)
            msg = fn.func_name + ' OK'
            _logger.info(msg)
        except Exception, e:
            err |= True
            _logger.error(e)
            if not options.testonly:
                notify(cf, fn.func_name)
    if err: raise

if __name__ == '__main__':
    sys.exit(main())
