#encoding:utf-8

import os,glob

def findR(path, wf):
    for root, dirs, files in os.walk(path):
        for f in files:
            if f.lower().endswith(wf):
                yield os.path.join(root, f)

def w2coding(rootpath="./", wf="txt", outcoding="utf8"):
    import fencoding, stat
    print rootpath, wf, outcoding
    for f in findR(rootpath, wf):
        print "xx", f
        coding = fencoding.detectf(f)
        #os.chmod(f, stat.S_IWRITE)
        content = unicode(open(f, 'rb').read(), coding)
        open(f+".bak", 'wb').write(content.encode(outcoding))
    
if __name__=='__main__':
    import sys  
    if len(sys.argv) < 3:
        w2coding()
    else:
        w2coding(sys.argv[1], sys.argv[2],sys.argv[3])
