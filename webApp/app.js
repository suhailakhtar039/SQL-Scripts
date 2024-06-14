var express = require('express');
var app = express();

app.get('/', (req, res) =>{
    res.send("HELLO FROM OUR WEB APP");
})

app.get('/joke', (req, res) =>{
    res.send('SIMPLE JOKE SEE ABOUT DOG');
    console.log("see me in the console");
})

app.listen(8080, () =>{
    console.log('listening')
})