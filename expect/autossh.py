#/usr/bin/python2

import sys, os, pexpect
(host,user,password) = sys.argv[1:]

foo=pexpect.spawn('ssh %s@%s' %(user,host))  
index=foo.expect(['yes/no', '.*password', 'Last login' ])  
if index == 0:
    foo.sendline('yes')
    j=foo.expect(['.*password','Last login'])
    if j == 1:
        print 'already OK'; sys.exit()        
if index == 2:
    print 'already OK'; sys.exit()

foo.sendline(password)  
foo.expect('Last login.*')  
foo.sendline("[ ! -d .ssh ] && mkdir -p .ssh && chmod 700 .ssh")  

rsa_pub=os.popen('cat ~/.ssh/id_rsa.pub').readline()
foo.sendline("echo '%s' >>~/.ssh/authorized_keys && chmod 644 ~/.ssh/authorized_keys" %rsa_pub)
foo.sendline("exit")
