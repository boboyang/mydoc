#!/usr/bin/python

from tools import now_str
    
import smtplib  
from email.mime.text import MIMEText

def send(From,password,Server,Tos,Subject,txt):
    msg=MIMEText(txt)
    msg['Subject'] = Subject+now_str()
    msg['From'] = From
    tolist=eval(Tos)
    msg['To']=','.join(tolist)

    svr = smtplib.SMTP(Server)  
    #svr.set_debuglevel(1)
    svr.starttls()  
    if '' != password>0:
        svr.login(From[:From.index('@')],password)  
    svr.sendmail(From, tolist, msg.as_string())  
    svr.quit()

def test():   
    TEXT = """
    Hello,
        World~
    """    
    send('abc@gmail.com','passwd','smtp.gmail.com:587',
         "['ddd@163.com',]",'[Nofice]',TEXT,'abc')    
