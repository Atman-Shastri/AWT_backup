var tt1 = setTimeout(function f1(){
    console.log("I don't want to execute");
}, 2000);

var tt2 = setTimeout(function f2(){
    console.log("I will stop f1 execution");
    clearTimeout(tt1);
}, 1000);