#!/usr/bin/python

conffile = "evtdeploy.ini"

import traceback
import mailer
import sys

FAB_CMD = "fab -f check_remote.py "
RUN_FAB = FAB_CMD + "--hide=status,running,user,stdout,abort"
_logger = None
_testOnly = True

#decarator
def check_ip_comp(f):           # func
    def _(cf,*a, **kw):         # func args
        modname=f.func_name.split('check_')[1]
        ips=cf.get(modname,'host').split(',')
        path,pidfile=None,None
        if cf.has_option(modname,'path'):
            path=cf.get(modname,'path')
        if cf.has_option(modname,'pidfile'):
            pidfile=cf.get(modname,'pidfile')
        if pidfile and not pidfile.startswith('/'):
            pidfile=path+pidfile
        for ip in ips:
            if ip and modname:
                check_computer(ip,modname, pidfile)
        r = f(cf,*a, **kw) 
        return r
    _.func_name = f.func_name
    return _


import os

def check_computer(ip, comp,pidfile):
    _logger.debug('Verifying "%s" at %s', comp, ip)
    cmd_line = '%s -H root@%s check_os:"%s"' % (RUN_FAB, ip, comp)
    if pidfile:
        cmd_line +=',"%s"' %pidfile
    #_logger.debug('Executing "%s"......', cmd_line)
    res = os.system(cmd_line)
    if(0 != res):
        raise Exception('Problem occurs when checking %s running at %s, pidfile:%s' %(comp,ip,pidfile))
    _logger.debug('"%s" is running at %s', comp, ip)


def check_service(comp, host, port):
    _logger.debug('Checking service port (%s) of "%s" at %s......', port, comp, host)
    cmd_line = '%s -H root@%s check_service_port:port=%s >> /dev/null 2>&1' % (RUN_FAB, host, port)
    #_logger.debug('<<check_service>> Executing "%s"......', cmd_line)
    res = os.system(cmd_line)
    if(0 != res):
        raise Exception('Problem occurs when checking service port (%s) of "%s" running at %s' % (port, comp, host))
    _logger.debug('Service port (%s) of "%s" at %s is opened', port, comp, host)


import subprocess

def retrieve_config(host, conf_file, pattern):
    _logger.debug('Get the config (%s) from "%s" at %s......', pattern, conf_file, host)
    cmd_line = '%s --hide=status,running,user -H root@%s get_config:conf_file="%s",pattern="%s"' % (FAB_CMD, host, conf_file, pattern)
    process = subprocess.Popen(cmd_line, shell=True, stdout=subprocess.PIPE)
    (s_stdout, s_stderr) =  process.communicate()
    #_logger.debug('get_conf: (%s) is "%s"', pattern, s_stdout)
    res = s_stdout.split('out: ')[1].rstrip()
    return res


def check_configs(cf, comp, t_comp):
    target = retrieve_config(cf.get(comp, 'host'), cf.get(comp, 'conf_file'), cf.get(comp, t_comp + '_entry'))
    t_server_list = target.split('=')[1].split(',')
    t_server_list.sort()
    target = ','.join(t_server_list)
    _logger.debug('config "%s" in %s is "%s"', cf.get(comp, t_comp + '_entry'), comp, target)
    host_list = cf.get(t_comp, 'host')
    port = cf.get(t_comp, 'port')
    c_server_list = map(lambda s: s + ':%s' % port, host_list.split(','))
    c_server_list.sort()
    c_target = ','.join(c_server_list)
    _logger.debug('compare: %s vs %s', target, c_target)
    if target != c_target:
        _logger.error('%s setting(=%s) in %s is different from monitor tool(%s)',
            t_comp,
            target,
            comp,
            c_target)
        raise Exception('Check %s setting in %s Error!' % (t_comp, comp))


import memcache

@check_ip_comp
def check_memcached(cf):
    modname='memcached'
    (host,port,path,pidfile)=[cf.get(modname,i) for i in ('host','port','path','pidfile')]
    mc = memcache.Client(["%s:%s" %(host,port)], debug=0)
    stat=mc.get_stats()
    if(len(stat)==0):
		raise Exception("server not available")
    version = stat[0][1]['version']
    #restart(host,modname,path,pidfile)
    
    
import pycassa
from pycassa.cassandra.c10.ttypes import NotFoundException
from pycassa.index import *


@check_ip_comp
def check_IPDBd(cf):
    modname = 'IPDBd'
    (host, port) = [cf.get(modname, i) for i in ('host', 'port')]
    check_service(modname, host, port)


@check_ip_comp
def check_cassandra(cf):
    modname = 'cassandra'
    (ip, port, cas_keyspace, path, pidfile) = [cf.get(modname, i) for i in ('host', 'port','keyspace','path','pidfile')]
    hosts = ip.split(',')
    for h in hosts:
        server = [h + ':%s' % port]
        check_service(modname, h, port)
        _logger.debug('Establishing the connection to Cassandra at %s (port=%s)......', h, port)
        pool = pycassa.ConnectionPool(cas_keyspace, server_list=server, timeout=4)
        for i in ['event_timeline', 'alert_timeline']:
            timeline = cf.get(modname, i)
            _logger.debug('Access Cassandra column family(%s) at %s (port=%s)', timeline, ip, port)
            col = pycassa.ColumnFamily(pool, timeline)
            if not col:
                raise Exception('Problem occurs when read the column family %s', timeline)
            assert col.timestamp() > 0

        
#    for h in hosts.split(','):
#        restart(h,modname,path,pidfile)
#        break
        

import gabriel.NexusService
from gabriel import *
from thrift import Thrift
from thrift.transport import TSocket, TTransport
from thrift.protocol import TBinaryProtocol


@check_ip_comp
def check_nexus(cf):
    modname='nexus'
    if _testOnly:
        for i in (modname,'IPDBd','memcached','cassandra'):
            check_configs(cf, modname, i)

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

def check_nginx(cf):
    """
        We will try to get one non-existing static file from nginx and expect 404 error.
    """
    modname = 'nginx'
    params = [cf.get(modname, i) for i in ('host', 'port', 'path')]
    _logger.debug('Verifying "Nginx" at %s', cf.get(modname, 'host'))
    check_service(modname, params[0], params[1])
    url_str = "http://%s:%s/%s" % tuple(params)
    _logger.debug('Executing "%s"', url_str)
    try:
        urllib2.urlopen(url_str).read()
        _logger.debug('nginx checking finished')
    except urllib2.HTTPError, e:
        if e.code == 404:
            _logger.debug('nginx checking finished')
        else:
            raise Exception("%d:%s" % (e.code, cf.get(modname, err)))
    except urllib2.URLError as ue:
        raise Exception('Cannot reach nginx at %s:%s (errno=%s)' % (params[0], params[1], ue.errno))

import json

@check_ip_comp
def check_nbs(cf):
    params = [cf.get('nginx', i) for i in ('host', 'port')]
    modname = 'nbs'
    params += [cf.get(modname, i) for i in ('appid', 'priv')]
    path = cf.get(modname, 'path')
    _logger.debug('Verifying "%s" at %s', modname, cf.get(modname, 'host'))
    url_str = "http://%s:%s/oauth/access_token?app_id=%s&priv_code=%s&grant_type=app_credential" % tuple(params)
    _logger.debug('Executing "%s"', url_str)
    try:
        res = urllib2.urlopen(url_str).read()
        d = json.loads(res)
        for i in ('access_token', 'expires_in'):
            assert i in d['data'].keys()
        _logger.debug('NBS checking finished')
    except urllib2.HTTPError, e:
        for err in ('err500', 'err502'):
            if e.code == int(err.lstrip('err')):
                raise Exception("%d:%s" % (e.code, cf.get(modname, err)))
    except urllib2.URLError as ue:
        raise Exception('Cannot reach NBS via %s (errno=%s)' % (url_str, ue.errno))

    #restart(params[0],modname,path,pidfile)


def check_log(host, logfile, msg):
    _logger.debug('Scan the log file(%s) at %s for msg(%s)', logfile, host, msg)
    res = os.system('%s -H root@%s check_log:"%s","%s"' % (RUN_FAB, host, logfile, msg))
    if(0 != res):
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

    if _testOnly:
        for i in (modname, 'nexus', 'memcached', 'cassandra'):
            check_configs(cf, modname, i)
    host,port,pri,logfile=[ cf.get(modname,i) for i in  ('host','port','pri','logpfile')]
    msg=send_event(host,port)
    time.sleep(float(cf.get(modname,'sleeptime')))    #wait for Morpheus log written
    check_log(host,logfile,msg)


@check_ip_comp
def check_morpheusalert(cf):
    check_morpheus(cf, 'morpheusalert')

@check_ip_comp
def check_morpheusevent(cf):
    check_morpheus(cf, 'morpheusevent')

@check_ip_comp
def check_activemq(cf):
    """
        We only check if ActiveMQ is running and listening the host:port at this moment.
    """
    modname = 'activemq'
    (host, port) = [cf.get(modname, i) for i in ('host', 'port')]
    check_service(modname, host, port)
#    from tools import now_str
#    (host,port,queuename)=[cf.get('activemq',i) for i in ('host','port','queuename')]
#    msg =now_str()
#    send_amqmsg(host,port,queuename,msg,True)

@check_ip_comp
def check_gsender(cf):
    modname = 'gsender'
    (host, port, queuename,paths,errlog) = [cf.get(modname, i) for i in ('host', 'port', 'queuename','path','errlog')]
    paths=map(str.strip,paths.split(','))
    #check all pid exist
    err = False
    for path in paths:
        try:
            res=os.system('%s -H root@%s check_gsenderpid:"%s"' %(RUN_FAB,host,path+pidfile))
            if(0 != res): 
                raise Exception("%s pid not exist in %s, %s" %(modname,host,path))    
        except Exception, e:
            err = True
    if err:
        raise
    #send amq msg
    msg = 'monitor::%f' % (time.time())
    if not send2gsenderbyNexus(cf, msg):
        raise Exception("Nexus cannot send msg to ActiveMQ when testing gsender at %s" % host)

    time.sleep(float(cf.get(modname, 'sleeptime')))
    #check log exist in either gsender
    err = True
    for path in paths:
        try:
            check_log(host, path+errlog, msg)
            err = False
        except Exception, e:
            pass
    if err:
        raise

def reachable(modname):
    return True
            
def restart(host,modname,path,pidfile):
    if not reachable(modname):
        raise Exception ('unreachable')
    if not pidfile.startswith('/'):
        pidfile=path+pidfile
    res=os.system('%s -H root@%s restart_%s:"%s","%s"' %(RUN_FAB,host,modname,path,pidfile))
    if(0 != res): 
        raise Exception("error restart %s, in %s" %(modname,host))        

import ConfigParser

def init_conf():
    cf = ConfigParser.ConfigParser()
    assert 1 == len(cf.read(conffile))
    return cf

def comp_info(cf, fnname):
    comp = fnname[fnname.find('_') + 1:]
    (ip, port) = [cf.get(comp, i) for i in ('host', 'port')]
    txt = """
    Component:  %s
    IP:         %s
    Port:       %s
    """ % (comp, ip, port)
    return txt
        
def notify(cf, txt):
    txt += traceback.format_exc()
    params = [cf.get('Mailer', i) for i in ('From', 'Passwd', 'Server', 'Tos', 'Subject')]
    params.append(txt)
    mailer.send(*params)
    sendSMS()

def sendSMS():
    pass    


import logging
import logging.handlers


def setupLogger(flname, conloglevel=logging.INFO, fileloglevel=logging.INFO, fmt='[%(asctime)s] [%(levelname)s]%(message)s'):
    global _logger
    _logger = logging.getLogger(sys.argv[0])
    _logger.setLevel(logging.DEBUG)
    filelog = logging.handlers.RotatingFileHandler(flname, mode='a', maxBytes=1048576, backupCount=3)
    consolelog = logging.StreamHandler(sys.stdout)
    filelog.setLevel(fileloglevel)
    consolelog.setLevel(conloglevel)
    formatter = logging.Formatter(fmt)
    filelog.setFormatter(formatter)
    consolelog.setFormatter(formatter)
    _logger.addHandler(filelog)
    _logger.addHandler(consolelog)


from optparse import OptionParser

def main():
    parser = OptionParser(usage='Usage: monitor [options]')
    parser.add_option('-c', '--component',
        action = 'store', type = 'string', dest = 'component', default = None,
        help = 'specify the component to verify.\t\t\t' +
                'Available: morpheusalert,morpheusevent,IPDBd,memcached,nexus,nginx,nbs,activemq,gsender,cassandra')
    parser.add_option('-d', '--debuglevel',
        action = 'store', type = 'int', dest = 'debuglevel', default = 6,
        help = 'select the log level for the console(0~7)')
    parser.add_option('-l', '--loglevel',
        action = 'store', type = 'int', dest = 'loglevel', default = 6,
        help = 'select the log level for the log file (0~7)')
    parser.add_option('-m', '--monitor', action = 'store_false', dest = 'testonly',
        help = 'conduct the monitoring procedure with e-mail notification and problem recovery')
    parser.add_option('-t', '--testonly', action = 'store_true', dest = 'testonly', default = True,
        help = 'conduct the check only without further action')
    (options, args) = parser.parse_args()
    if options.loglevel < 0 or options.loglevel > 7:
        parser.print_help()
        exit(-1)

    global _testOnly
    _testOnly = options.testonly

    logLevel = [logging.CRITICAL, logging.CRITICAL, logging.CRITICAL,
                logging.ERROR, logging.WARNING, logging.WARNING,
                logging.INFO, logging.DEBUG]
    selflogfile = "./%s.log" % (sys.argv[0].split('/')[-1][:-3])
    setupLogger(flname=selflogfile,
        conloglevel=logLevel[options.debuglevel],
        fileloglevel=logLevel[options.loglevel])
    cf = None
    checks = [
        check_morpheusalert,
        check_morpheusevent,
        check_memcached,
        check_IPDBd,
        check_nexus,
        check_nginx,
        check_nbs,
        check_activemq,
        check_gsender,
        check_cassandra,
#        check_signalingd,
    ]
    cf = init_conf()
    if options.component:
        check_name = 'check_' + str.lower(options.component)
        for fn in checks:
            if str.lower(fn.func_name) == check_name:
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
            _logger.debug('Executing "%s"......', fn.func_name)
            fn(cf)
            msg = fn.func_name + ' OK'
            _logger.info(msg)
        except Exception, e:
            err |= True
            info=comp_info(cf,fn.func_name)
            _logger.error(e.message+info)
            if not options.testonly:
                notify(cf, info)
    if err: raise

if __name__ == '__main__':
    sys.exit(main())
