// this:在函数调用模式下，this被绑定到全局对象上。这个是javascript语言设计上的一个错误。 可以采用以下方法避免：   
// var that = this;

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
    if(!this.prototype[name]){
        this.prototype[name]=func;
        return this;
    }
};

//module
String.method('deentityify',function(){
    var entity={
        quot:'"',
        lt:'<',
        gt:'>',
    };
    return function(){
        return this.replace(/&([^&;]+);/g,
            function(a,b){
                var r=entity[b];
                return typeof r ==='string'?r:a;
            }
        );
    };
}());
document.writeln('&lt;&quot;&gt;'.deentityify());

//memorization
var fibonacci=function(){
    var memo=[0,1];
    var fib=function(n){
        var res=memo[n];
        if(typeof res !=='number'){
            res=fib(n-1)+fib(n-2);
            memo[n]=res;
        } 
        return res;       
    };
    return fib;
}();
document.writeln('fibonacci of ',10,':', fibonacci(10));

