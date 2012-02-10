import os, re, stat, chardet, sys, glob

def mmpversion(pkgVer):
  ls = pkgVer.split('.')
  ver = ls[0] + '.' + str(int(ls[1]) * 256 + int(ls[2]))
  return ver

'''example:
    projPath,"M:\\ME_Music_VC"   
    pkgVer, '14.2.4'
    weekNo, '14.1133.31'
'''
def getwork(projPath, pkgVer, weekNo):
  pkgfilepv = [r'(\#\{".+"\},\(\w+\),) \d+, \d+, \d+',
             r'\1 ' + ', '.join(pkgVer.split('.'))]

  # {file-type: [pattern, replacement]}
  ME_Music_VCwork = {
    '*.mmp':
    [r'(VERSION\s*) \d+\.\d+',
     r'\1 ' + mmpversion(pkgVer)],

    'musicshop.confml':
    [r'<KMusicShopVersion>\d.+?</KMusicShopVersion>',
     r'<KMusicShopVersion>' + weekNo + '</KMusicShopVersion>'],

    '101ffb51.cre':
    ['D.D.D'.replace('D', '(\d\x00)+').replace('.', '.\x00') + '\x0e',
     '\x00'.join(list(weekNo)) + '\x00' + '\x0e'],

    '101ffb51.txt':
    [r'0xD string "[\w\.]+"',
     r'0xD string "' + weekNo + '"'],

    'MakeIADSIS.bat':
    [r'_v\d+.\d+.\d+.sis',
     r'_v' + pkgVer + '.sis'],

    '*uda.pkg':pkgfilepv,
    'ovimusicshopstub.pkg':pkgfilepv,
    'ovimusiciad.pkg':pkgfilepv,

    'package_definition.xml':
    [r'tech-domain="ss" name="Ovi Music App" version=".+?" level="apps">',
     r'tech-domain="ss" name="Ovi Music App" version="' + pkgVer + '" level="apps">']
          }
  Camesework = {
    '*.mmp':
    [r'(VERSION\s*) \d+\.\d+',
     r'\1 ' + mmpversion(pkgVer)],

    '*.pkg':pkgfilepv
              }
  if projPath.find('ME_Music_VC') > -1:
    return ME_Music_VCwork
  elif projPath.find('Camese') > -1:
    return Camesework
  else: return None

def findfiles(path, target):
  results = []
  for root, dirs, files in os.walk(path):
    results += glob.glob(os.path.join(root, target))
  return results

def modify(files, pattern, repl):
  import encoding.detectf
  for filename in files:
    coding = detectf(f)
#    print f
#    print coding

    os.chmod(f, stat.S_IWRITE)
    content = open(f, 'rb').read()

    if None == coding:
      content = re.sub(pattern, repl, content)
    else:
      content = content.decode(coding)
      content = re.sub(pattern, repl, content)
      content = content.encode(coding)

    open(f, 'wb').write(content)

if __name__ == '__main__':
  if len(sys.argv) < 4:
    sys.exit('Usage: %s projPath pkgVer weekNo ' % sys.argv[0])

  if not os.path.exists(sys.argv[1]):
    sys.exit('ERROR: projPath %s was not found!' % sys.argv[1])

  work = getwork(sys.argv[1], sys.argv[2], sys.argv[3])
  for k, v in work.items():
    modify(findfiles(sys.argv[1], k), v[0], v[1])
