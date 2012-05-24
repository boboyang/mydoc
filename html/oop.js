// print, auto show arguments
function _p(){
    len=_p.arguments.length
    for(i=0;i<len;i++){
        document.write(_p.arguments[i], ", ")
    }
    document.write("<br/>")
}

// obj
var site={
    url:"www.mine.com",
    say: function(){_p(this.url)}
}
site.say()

// Math
var i = -6
_p(Math.abs(i), Math.sin(i), Math.log(i), Math.max(), Math.PI)

// Date
var curdate=new Date(2012, 9, 29, 5, 43, 0)
_p(curdate.getYear(),Date.UTC(curdate))


