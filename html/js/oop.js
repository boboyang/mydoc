// print, auto show arguments
var _p = function(){
    len=_p.arguments.length
    for(i=0;i<len;i++){
        document.write(_p.arguments[i], ", ")
    }
    document.write("<br/>")
};

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
var curdate=new Date(2012, 0, 29)
_p(curdate, Date.UTC(curdate))

//array like obj
var is_array=function(value){
    return value&&
        typeof value==='object'&&
        typeof value.length==='number'&&
        typeof value.splice==='function'&&
        !(value.propertyIsEnumerable('length'));
}
var misc=['str1',222,true];
_p(is_array(misc), is_array(123));


