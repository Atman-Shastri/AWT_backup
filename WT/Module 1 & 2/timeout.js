var s1 = setTimeout(function(){
    console.log("Time out");
}, 2000);

var s2 =setTimeout(function(){
    console.log("Time out 2");
}, 7000);

clearTimeout(s2);

// function func1() {
//     console.log("Hello");
// }

// setTimeout(func1,5000);
// setTimeout(func1,7000);