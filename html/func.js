//closure

var fade=function(node){
    var level=1;
    var step=function(){
        var hex=level.toString(16);
        node.style.backgroundColor='#FFFF'+hex+hex;
        if(level<15){
            level+=1;
            setTimeout(step,100);
        }
    };
    setTimeout(step,100);
};
fade(document.body);

var add_handlers=function(nodes){
    var i;
    for (i=0;i<nodes.length;i++){
        nodes[i].onclick=function(i){
            return function(e){
                alert(e)
            };
        }(i);
    }
};
add_handlers(frames)

//prototype
Function.prototype.method=function(name,func){
    if(!this.prototype.name){
        this.prototype.name=func;
        //return this;
    }
};

//module
String.method('deentityify',function(){
    var entity={
        quot:'"',
        lt:'<',
        gt:'>',
    }
    return function(){
        return this.replace(/&([^&;]+);/g,
            function(a,b){
                var r=entity[b];
                return typeof r ==='string'?r:a;
            }
        );
    };
}());
document.writeln('&lt;&quto;&gt;'.deentityify());
