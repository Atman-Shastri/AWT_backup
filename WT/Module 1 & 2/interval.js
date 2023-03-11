var interval=setInterval(()=>{
    console.log("tick");
},1000);

setTimeout(()=>{
    clearInterval(interval);
},5000);