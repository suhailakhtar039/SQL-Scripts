var express = require('express');
var app = express();

app.get('/', (req, res) =>{
    res.send("HELLO FROM OUR WEB APP");
})

app.listen(8080, () =>{
    console.log('listening')
})