//prototypal
if(typeof Object.beget!=='function'){
    Object.beget=function(o){
        var F=function(){};
        F.prototype=o;
        return new F();
    };
}

var myMammal={
    name:'Herb',
    saying:'Oh',
    get_name:function(){
        return this.name;
    },
    say:function(){
        return this.saying || '';
    },
};
var myCat=Object.beget(myMammal);
myCat.name='Henrietta';
myCat.saying='meow';
myCat.purr=function(n){
    var i,s='';
    for(i=0;i<n;i++){
        if(s){
            s+='-';
        }
        s+='r';
    }
    return s;
}
myCat.get_name=function(){
    return this.say()+' '+this.name+' '+this.say();
}
document.writeln(myMammal.get_name());
document.writeln(myCat.get_name());

var mammal=function(spec){
    var that={};
    that.get_name=function(){
        return spec.name;
    };
    that.say=function(){
        return spec.saying ||'';
    };
    return that;
};
var myMammal2=mammal({name:'Herb'});
document.writeln(myMammal2.get_name());


