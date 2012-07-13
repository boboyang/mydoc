from datetime import datetime
def now_str():
    return datetime.utcnow().strftime('%Y-%m-%d %H:%M:%S')
    
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
