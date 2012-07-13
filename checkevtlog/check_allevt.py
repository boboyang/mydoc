#!/usr/bin/python

selflogfile="/var/log/check_allevt.log"

from check_lastevt import *
      
import time,sys    
def check_all(cf,logfile,sleeptime):
    count=0
    for line in open(logfile,'r'):
        mac, event_time = find_devtime(line)
        dev = getdlink_id(cf,mac)
        if check_event_time(cf, dev, event_time): 
            count+=1
        else: 
       	    print mac,event_time
            #raise
    print "total found: %d" %count
      
def check_notinlog(cf,logfile,sleeptime):
    count=0
    dic={}
    for line in open(logfile,'r'):
        mac, event_time = find_devtime(line)
        dev = getdlink_id(cf,mac)
        dic.setdefault(dev,[])
        dic[dev].append(event_time)
    
    section='cassandra'
    cas_server=cf.get(section,'server') 
    cas_keyspace=cf.get(section,'keyspace') 
    pool = pycassa.ConnectionPool(cas_keyspace, server_list=eval(cas_server), timeout=4)
    timeline=cf.get(section,'event_timeline') 
    col = pycassa.ColumnFamily(pool,timeline)
    if not col: raise
    
    for dev in dic.keys():
        res=col.get(dev,column_count=col.get_count(dev))
        for event_time in res.keys():
            try:
                if dic[dev].index(event_time)>=0:
                    count+=1
                    if count%10000 == 0: print count
                else:
                    print dev,event_time
            except Exception, e:
                print dev,event_time
                #raise

    print "total found: %d" %count
    
      
if __name__ == '__main__':
    sys.exit(main(check_all))
#    sys.exit(main(check_notinlog))

