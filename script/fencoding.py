#encoding:utf-8

def detect(txt):
    import chardet
    return chardet.detect(txt)['encoding']
    
def detectf(f):
    fp=open(f,'r')
    coding=detect(fp.readline())
    fp.close()
    return coding
    
if __name__=='__main__':
    import sys  
    print detectf(sys.argv[0])
