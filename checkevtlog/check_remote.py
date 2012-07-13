import fabric.api

def fabrun(cmd):
    res=fabric.api.run(cmd)
    assert res.succeeded
    return res
    
def check_os(comps,pidfile=None):
    check_dic={
        "mem":"if [ $((`free -m |grep Mem: |awk '{print $4}'`)) -lt 2 ]; then echo 'no mem';fi",
        "disk":"df|awk '{print $5 $6}' |awk -F'%' '{if ($1 >80 && $1 <=100)print $2\": no space\"}'",
        "cpu":"cat /proc/loadavg |awk '{if ($1>99) print  $1}'",
        }
    for k,v in check_dic.items():
        res=fabrun(v)
        if(len(res)>0): 
            raise Exception(k,v,res)
    
    #check component exist    
    if pidfile:
        check_pid(pidfile)        
    else:            
        for i in comps.split('/'):
            res = fabrun("ps ax|grep %s|grep -v grep" %i)
            assert len(res)>0


def check_service_port(port):
    cmd_line = 'netstat -nl | grep ":%s" | grep -v grep' % (port)
    res = fabrun(cmd_line)
    assert(len(res) > 0)
    return res


def get_config(conf_file, pattern):
    cmd_line = 'grep -i "^%s=" %s' % (pattern, conf_file)
    res = fabrun(cmd_line)
    assert(len(res) > 0)
    #print('%s in %s is "%s', pattern, conf_file, res.rstrip())
    return res.rstrip()

          
def check_log(logfile,msg):
    res = fabrun('if [ -f %s ]; then grep "%s" "%s"; fi' %(logfile, msg,logfile))
    assert len(res)>0

def check_pid(pidfile):
    get_pid="PID=`cat %s`" %pidfile
    check_exist="kill -0 $PID"
    cmd=" && ".join((get_pid, check_exist))
    fabrun(cmd)    
    
def check_gsenderpid(pidfile):
    get_pid="PID=`cat %s |cut -d ' ' -f2`" %pidfile
    check_exist="kill -0 $PID"
    cmd=" && ".join((get_pid, check_exist))
    fabrun(cmd)
        
def restart_memcached(path,pidfile):
    cd = "cd %s" %path
    get_pid="PID=`cat %s`" %pidfile
    kill_exist="if kill -0 $PID >/dev/null 2>&1; then ./memcached1 stop;fi"
    start="./memcached1 start" 
    check_exist="kill -0 $PID"
    cmd=' && '.join((cd,get_pid,kill_exist,start,get_pid, check_exist))
    fabrun(cmd) 
    
# has prblem, one is not started, maybe for consistance    
def restart_cassandra(path,pidfile):
    cd = "cd %s" %path
    get_pid="PID=`cat %s`" %pidfile
    kill_exist="if kill -0 $PID >/dev/null 2>&1; then kill $PID;fi"
    start="./dse cassandra -t -p %s" %pidfile
    check_exist="kill -0 $PID"
    cmd=' && '.join((cd,get_pid,kill_exist,start,get_pid, check_exist))
    fabrun(cmd) 
    
def restart_mydlinkNBS(path,pidfile):
    cd = "cd %s" %path
    get_pid="PID=`cat %s`" %pidfile
    kill_exist="if kill -0 $PID  > /dev/null 2>&1; then kill -INT $PID;fi"
    start="sleep 1 && /opt/env/bin/uwsgi --ini-paste ./production.ini" 
    check_exist="kill -0 $PID"
    cmd=" && ".join((cd,get_pid,kill_exist,start,get_pid, check_exist))
    fabrun(cmd)    
    
def restart_gsender(path,pidfile):
    cd = "cd %s" %path
    get_pid="PID=`cat %s |cut -d ' ' -f2`" %pidfile
    kill_exist="if kill -0 $PID  > /dev/null 2>&1; then kill $PID;fi"
    start="sleep 1 && ./start.sh"
    check_exist="kill -0 $PID"
    cmd=" && ".join((cd,get_pid,kill_exist,start,get_pid, check_exist))
    fabrun(cmd)
        
