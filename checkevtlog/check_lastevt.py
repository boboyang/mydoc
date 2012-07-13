#!/usr/bin/python

"""
easy_install -U distribute
easy_install pycassa
easy_install python-memcached
"""

conffile="evtdeploy.ini"
  
import re
def find_devtime(line):
    pattern=re.compile("\"event_time\":\"(\d+)\",.*\"from\":\"(\w+)\"")
    m=pattern.search(line)
    if not m:
        raise Exception("log format is wrong: %s" %line)
    event_time, mac = int(m.group(1)), m.group(2)
    return mac, event_time
    
import memcache
import json

def getdlink_id(cf, mac):
    (ip,port,kstart,mid)=[cf.get('memcached',i) for i in ('host','port','mackeystart','mid')]
    mc = memcache.Client(["%s:%s" %(ip,port)], debug=0)
    if(len(mc.get_stats())==0):
		raise Exception("server not available")
    v=mc.get(kstart + mac)
    mn=''
    #example:{"sid":896780,"model":"DCS-932L","mid":"70000094","mac":"00EF70000094"}
    if v:
        mn=json.loads(v)[mid]
    return "%s:%s" %(mac,mn)
                
import pycassa
from pycassa.cassandra.c10.ttypes import NotFoundException
from pycassa.index import *
def check_event_time(cf,dev,event_time):
    section='cassandra'
    (ip,port)=[cf.get(section,i) for i in ('host','port')]
    servers=map(lambda s:s+':%s' %port,ip.split(','))
    cas_keyspace=cf.get(section,'keyspace') 
    pool = pycassa.ConnectionPool(cas_keyspace, server_list=servers, timeout=4)
    timeline=cf.get(section,'event_timeline') 
    col = pycassa.ColumnFamily(pool,timeline)
    if not col: raise
    try:
        col.get(dev,columns=[event_time])
    except NotFoundException:
        return False
    logging.info("%s, %d" %(dev,event_time))
    del pool
    return True


import ConfigParser 
def init_conf():
    cf = ConfigParser.ConfigParser()               
    assert 1==len(cf.read(conffile))
    return cf
      
import os,time,sys,logging  
def check_last(cf,logfile,sleeptime):
    p=os.popen('tail -n 1 %s.1' %logfile)
    line = p.readline()
    if len(line) <= 0:  #no log rotate, if size not reached 
        return 0
    mac, event_time = find_devtime(line)
    dev = getdlink_id(cf,mac)
    #try 3 times
    for i in range(1,4):
        if check_event_time(cf, dev, event_time): return 0
        time.sleep(sleeptime*i)
    else: return -1
        
def main(docheck,sleeptime=1):
    if len(sys.argv) == 2:
        sleeptime= int(sys.argv[1])
    
    selflogfile="/var/log/%s.log" %(sys.argv[0].split('/')[-1][:-3])
    logging.basicConfig(filename=selflogfile,format='%(asctime)s %(message)s',level=logging.INFO)

    try:
        cf=init_conf()
        logfile=cf.get('rotatelog','event_logfile') 
        return docheck(cf,logfile,sleeptime)        
    except Exception, e:
        logging.exception(e)
        raise             
if __name__ == '__main__':
    sys.exit(main(check_last))

