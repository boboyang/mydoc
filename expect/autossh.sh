#!/usr/bin/expect -f

set host     [lindex $argv 0]
set user     [lindex $argv 1]
set password [lindex $argv 2]
#HOME
set home     [lindex $argv 3]   

set timeout 30
#log_user 0

spawn scp $home/.ssh/id_rsa.pub $user@$host:
expect {
    "yes/no" { 
        send "yes\r"
        exp_continue
    } "password:" { 
        send "$password\r" 
    }
}

spawn ssh $user@$host
expect {
    "*password:" {
        send "$password\r" 
        expect "Last login"
        send "\[ ! -d .ssh \] && mkdir -p .ssh && chmod 700 .ssh\r"
        expect "*#"
        send "cat id_rsa.pub >>.ssh/authorized_keys && chmod 644 .ssh/authorized_keys\r"
        expect "*#"
        send "rm -f id_rsa.pub\r"
        send "exit\r"
    } "*#" {
        send "exit\r"
    }
}






