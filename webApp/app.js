var express = require('express');
var app = express();

app.get('/', (req, res) =>{
    res.send("HELLO FROM OUR WEB APP");
})

app.get('/joke', (req, res) =>{
    res.send('SIMPLE JOKE SEE ABOUT DOG');
    console.log("see me in the console");
})

app.get('/random_num', (req,res)=>{
    var num = Math.floor((Math.random()*10) + 1);
    res.send("Your lucky number is " + num);
})

app.listen(8080, () =>{
    console.log('listening')
})