import zipfile, re, glob, os

# proto: helen, vasco,...
# type: subcon, rnd
def findfiles(path, proto, type):

    ziptargets = ['*' + proto + '_' + type + '*.zip',
               '*' + proto + '_uda*.zip']
    results = []
    for t in ziptargets:
        for root, dirs, files in os.walk(path):
            results += glob.glob(os.path.join(root, t))
    return results

def findinzip(target, files):
    for filename in files:
        z = zipfile.ZipFile(filename, 'r') # read mode
        for name in z.namelist():
            pattern = re.compile(target)
            if pattern.search(name) > 0:
               print name
               z.extract(name, '.\\')

# type: subcon or rnd            
def findimage(files, type,languageno):
    targets = [
             '\d_' + type + '\.core\.fpsx',
             languageno+'\..+' + type + '\.rofs2.fpsx',
             '.+tools_.+' + type + '\.rofs3\.fpsx',
             '\.udaerase\.fpsx',
             'U01\..+\.uda\.fpsx',
             '\d_' + type + '\.rofs1\.symbol',
             '\d_' + type + '\.rom\.symbol'
             ]
    for t in targets:
        findinzip(t, files)

def moveimage(outdir='.\\outimage'):
    import shutil
    root = '.\\output'
    if not os.path.exists(outdir):
        os.mkdir(outdir)

    for dirpath, dirs, files in os.walk(root):
        for name in files:
            # print dirpath, dirs, name
            #os.rename is faster than shutil.move
            os.rename(dirpath + '\\' + name, outdir + '\\' + name)
    shutil.rmtree(root)
	
if __name__ == '__main__':
    path = "R:\sdk\s60_rd_sdks\mcl\mcl_201132_hw79u_05"
    proto = 'helen'
    type = 'subcon'
    languageno ='_21'
    findimage(findfiles(path, proto, type), type, languageno)
    moveimage()
