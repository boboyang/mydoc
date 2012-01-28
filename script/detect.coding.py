def detect(txt):
    import chardet
    return chardet.detect(txt)['encoding']
    
def detectencoding(fname):
    fp=open(fname,'r')
    coding=detect(fp.readline())
    fp.close()
    return coding
    
if __name__=='__main__':
    import sys  
    print detectencoding(sys.argv[0])
