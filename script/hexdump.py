"""
UnicodeHexDump.py

Simple routine for dumping any kind of string, ascii, encoded, or 
unicode, to a standard hex dump.

Also two simple routines for reading and writing unicode strings
as encoded strings in a file.

Based on ASPN: Hex dumper -- Sebastien Keim & Raymond Hettinger 
http://aspn.activestate.com/ASPN/Cookbook/Python/Recipe/142812 

Jack Trainor 2008
whille 2012
"""

FILTER = ''.join([(len(repr(chr(x))) == 3) and chr(x) or '.' for x in range(256)])

""" dump any string to formatted hex output """
def dump(s):
    import types
    dic={types.StringType:2,types.UnicodeType:4}
    if type(s) not in dic:
        return
    w= dic[type(s)]        
    length = 32/w
    result = []
    w_fmt='%%0%dx' %w
    for i in xrange(0, len(s), length):
       chars = s[i:i+length]
       hex = ' '.join([ w_fmt %(ord(x)) for x in chars])
       printable = ''.join(["%s" % ((ord(x) <= 127 and FILTER[ord(x)]) or '.') for x in chars])
       result.append((w_fmt+"  %-*s  %s\n") %(i*w/2, length*(w+1), hex, printable))
    return ''.join(result)


def readFile(path, encoding, errors="replace"):
    raw = open(path, 'rb').read()
    uniText = raw.decode(encoding, errors)
    return uniText

def writeFile(path, uniText, encoding, errors="replace"):
    encText = uniText.encode(encoding, errors)
    open(path, 'wb').write(encText)
    
def test():
    TEST = u"Copyright: \u00a9\r\nRegistered: \u00ae\r\nAlpha: \u03b1\r\nOmega: \u03c9\r\n\Em dash: \u2015\r\n"
    
    print dump("ascii     " + TEST.encode("ascii", "replace"))
    print dump("Latin-1   " + TEST.encode("Latin-1", "replace"))
    print dump("utf8      " + TEST.encode("utf8", "replace"))
    print dump("utf16     " + TEST.encode("utf16", "replace"))
    print dump("utf-16-be " + TEST.encode("utf-16-be", "replace"))
    print dump("utf-16-le " + TEST.encode("utf-16-le", "replace"))
    print dump("unicode   " + TEST)
    
    DELETE_ME_TXT = "deleteme.txt"
    writeFile(DELETE_ME_TXT, TEST, "utf8")
    uniText = readFile(DELETE_ME_TXT, "utf8")
    assert (uniText == TEST)

if __name__ == "__main__":
    test()
