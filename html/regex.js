var parse_url=/^(?:(\w+:)?(\/{0,3})([\d\.\-\w]+)(?::(\d+))?(?:\/([^?#]*))?(?:\?([^?#]*))?(?:#(.*))?$/;
var url="http://www.ora.com:80/goodparts?q#fragment";
var res=parse_url.exec(url);
var names=['url','scheme','splash','host','port','path','query','hash',];
var blanks='   '
var i;
for(i=0;i<res.length;i++){
    document.writeln(names[i]+':'+
        blanks.substring(names[i].length),results[i]);
}
