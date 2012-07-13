#!/usr/bin/python

"""
    random change text in conf, to simulate problem, 
    such as wrong memcache IP, wrong cassandra IP,wrong name of cassandra
    result: 
        logging file of "Traceback" content of python exception

"""

conffile="evtdeploy.ini"  
target="check_lastevt"
selflogfile=("/var/log/%s.log" %target)
replace='111'
repeating=10

import os,re,random

#os.system("cp %s %s.bak" %(conffile,conffile))
f=open("%s" %conffile,"r+")
f.seek(0,2)                 # seek to end of file
bytes = f.tell()
pattern=re.compile("Traceback")
        
for i in range(repeating):        
    #prepare
    randpos=int(bytes*random.random())
    if randpos + len(replace) > bytes:
        randpos -=3
    f.seek(randpos)
    oldstr = f.read(len(replace))
    os.system("echo '' > /var/log/%s.log" %target)

    #change
    f.seek(randpos)
    f.write(replace)
    f.flush()

    #test
    try: 
        assert 0 == os.system("python %s.py 1 2>/dev/null" %target)
        f2= open("%s" %selflogfile,"r")
        m=pattern.search(f2.read())
        f2.close()
        if not m:
            raise Exception("No exception found")
    except Exception, e:
        #print e
        pass
        
    # recover
    f.seek(randpos)
    f.write(oldstr)
    f.flush()
    os.system("echo '' > /var/log/%s.log" %target)

print "check same conf"   
os.system("diff %s %s.bak" %(conffile,conffile))
