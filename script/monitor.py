#!/usr/bin/python

conffile="evtdeploy.ini"  

import traceback
import mailer

#decarator
def check_ip_comp(f):           # func
    def _(cf,*a, **kw):         # func args
#        comp=f.func_name.split('check_')[1]
#        ips=cf.get(comp,'host').split(',')
#        for ip in ips:
#            if ip and comp:
#                check_machine(ip,comp)
        r = f(cf,*a, **kw) 
        return r
    _.func_name = f.func_name
    return _
            
import os          
def check_machine(ip,comp):
    res=os.system('fab -f check_remote.py -H root@%s check_os:%s' %(ip,comp))
    if(0 != res): 
        raise Exception("machine error, ip: %s, comp: %s" %(ip,comp))

import memcache

@check_ip_comp
def check_memcached(cf):
    (ip,port)=[cf.get('memcached',i) for i in ('host','port')]
    mc = memcache.Client(["%s:%s" %(ip,port)], debug=0)
    stat=mc.get_stats()
    if(len(stat)==0):
		raise Exception("server not available")
    version = stat[0][1]['version']

import pycassa
from pycassa.cassandra.c10.ttypes import NotFoundException
from pycassa.index import *

@check_ip_comp
def check_cassandra(cf):
    section='cassandra'
    (ip,port)=[cf.get(section,i) for i in ('host','port')]
    servers=map(lambda s:s+':%s' %port,ip.split(','))
    cas_keyspace=cf.get(section,'keyspace') 
    pool = pycassa.ConnectionPool(cas_keyspace, server_list=servers, timeout=4)
    for i in ['event_timeline','alert_timeline']:
        timeline=cf.get(section,i) 
        col = pycassa.ColumnFamily(pool,timeline)
        if not col: raise
        assert col.timestamp()>0
        
import sys
import gabriel.NexusService
from gabriel import *
from thrift import Thrift
from thrift.transport import TSocket,TTransport
from thrift.protocol import TBinaryProtocol

@check_ip_comp
def check_nexus(cf):
    params=[cf.get('nexus',i) for i in  ('host','port','appid')]
    transport = TSocket.TSocket(params[0],int(params[1])) 
    transport = TTransport.TFramedTransport(transport)
    protocol = TBinaryProtocol.TBinaryProtocol(transport)
    client = NexusService.Client(protocol)
    transport.open()
    assert client.isAppRegistered(params[2])
    transport.close()        

import urllib2  

@check_ip_comp
def check_signalingd(cf):
    params=[cf.get('signalingd',i) for i in ('host','port','exist_mac')]
    #url_str= "http://%s:%s/tssm.php?mac=%s" %tuple(params) 
    url_str= "http://%s:%s" %tuple(params[:2]) 
    res=urllib2.urlopen(url_str).read()
    #expectstr='SIGNAL='
    expectstr='It works'
    assert 0 <= res.find(expectstr)
        
import json

@check_ip_comp
def check_mydlinkNBS(cf):
    params=[cf.get('mydlinkNBS',i) for i in  ('host','port','appid','priv')]
    url_str= "http://%s:%s/oauth/access_token?app_id=%s&priv_code=%s&grant_type=app_credential" %tuple(params)
    try:
        res=urllib2.urlopen(url_str).read()
        d = json.loads(res)
        for i in ('access_token', 'expires_in'): 
            assert i in d['data'].keys()
            
    except urllib2.HTTPError, e:
        instruct=''
        if e.code == 500:
            instruct = "communication between NBS and Nexus fails. Please inform the administrator to check NBS configuration file: '/opt/env/py4mydlink/mydlinkNBS/production.ini'."
        elif e.code == 502:
             instruct = "communication between Nginx and uwsgi fails. Please check Nginx configuration and uwsgi is running."
        raise Exception("%d:%s, %s" %(e.code,e.read(), instruct))   
           
          
import socket,time

def check_morpheus(cf, modname):
    def send_event(host,port):
        s = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
        s.connect((host,int(port)))
        msg='<%s> %f.' %(pri,time.time())
        s.send('%d %s' %(len(msg), msg))
        s.close() 
        return msg
        
    def check_log(logfile,msg):    
        res=os.system('fab -f check_remote.py -H root@%s check_morpheus:"%s","%s"' %(host,logfile,msg))
        if(0 != res): 
            raise Exception("log not found in ip: %s" %host)
            
    host,port,pri,logfile=[ cf.get(modname,i) for i in  ('host','port','pri','logpfile')]
    msg=send_event(host,port)
    time.sleep(float(cf.get(modname,'sleeptime')))    #wait for Morpheus log written
    check_log(logfile,msg)

@check_ip_comp
def check_morpheusalert(cf):
    check_morpheus(cf,'morpheusalert')

@check_ip_comp
def check_morpheusevent(cf):
    check_morpheus(cf,'morpheusevent')
   
from BeautifulSoup import BeautifulSoup

@check_ip_comp    
def check_activemq(cf):
    """pattern:
    <td><a href="browse.jsp?JMSDestination=GSENDER.HIGHWAY">\n\n\nGSENDER.HIGHWAY</a></td>\n<td>0</td>\n<td>2<td>\n<td>32</td>\n<td>32</td>
    """
    params=[cf.get('activemq',i) for i in ('host','port','queuename')]
    url_str = "http://%s:%s/admin/queues.jsp" %tuple(params[:2]) 
    res=urllib2.urlopen(url_str).read()
    soup = BeautifulSoup(res)
    table = soup.find('table', id="queues")
    tbody=table.find('tbody')
    tds=tbody.find('tr').findAll('td')
    assert tds[0].a.string.find(params[2])>0
    for i in tds[1:5]:
        assert int(i.string)>=0
                
from tools import now_str
from pyactivemq import ActiveMQConnectionFactory

def check_activemq2(cf):
    params=[cf.get('activemq',i) for i in ('host','port','queuename')]
    url = 'tcp://%s:%s' %tuple(params[:2]) 
    f = ActiveMQConnectionFactory(url)
    conn=f.createConnection()
    session = conn.createSession()

    msg =now_str()
    queuename =params[2]
    textMessage = session.createTextMessage(msg)
    queue = session.createQueue(queuename)

    consumer = session.createConsumer(queue)
    producer = session.createProducer(queue)
    del session

    conn.start()
    del conn
    producer.send(textMessage)
    rev = consumer.receive(500)
    assert rev.text==msg
    
import ConfigParser     
def init_conf():
    cf = ConfigParser.ConfigParser()               
    assert 1==len(cf.read(conffile))
    return cf
 
def notify(cf,fname):
    comp=fname[fname.find('_')+1:]
    (ip,port)=[cf.get(comp,i) for i in ('host','port')]
    txt="""
    Component:  %s
    IP:         %s
    Port:       %s
    
    """ %(comp,ip,port)
    txt+=traceback.format_exc()
    params=[cf.get('Mailer',i) for i in ('From','Passwd','Server','Tos','Subject')]
    params.append(txt)
    mailer.send(*params)
    sendSMS()
    
def sendSMS():
    """TBD..."""
    pass    
                    
import sys,logging            
def main():
    selflogfile="./%s.log" %(sys.argv[0].split('/')[-1][:-3])
    logging.basicConfig(filename=selflogfile,format='%(asctime)s %(message)s',level=logging.INFO)
    
    cf=None
    checks=[
#        check_morpheusalert,
#        check_morpheusevent,
#        check_memcached,
#        check_signalingd,
#        check_nexus,
#        check_mydlinkNBS,
        check_activemq2,
#        check_cassandra,
    ]
    cf=init_conf()
    err=False
    for fn in checks:
        try:
            fn(cf)
        except Exception, e:
            err |=True
            logging.exception(e)
            notify(cf,fn.func_name)
    if err:raise
                
if __name__ == '__main__':
    sys.exit(main())

