var express = require('express');
var app = express();
var mysql = require('mysql2');
 
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Suh@il786',
  database: 'check_with_node'
});

app.set("view engine", "ejs");

app.get('/', (req, res) =>{
    var q = "SELECT COUNT(*) AS count FROM users";
    connection.query(q, (err, results)=>{
        if(err) throw err;
        var count = results[0].count;
        // res.send("We have " + count + " users in our db");
        res.render("home", {count:count})
    })
    // res.send("HELLO FROM OUR WEB APP");
})

app.get('/joke', (req, res) =>{
    res.send('SIMPLE JOKE SEE ABOUT DOG');
    console.log("see me in the console");
})

app.get('/random_num', (req,res)=>{
    var num = Math.floor((Math.random()*10) + 1);
    res.send("Your lucky number is " + num);
})

app.post('/register', (req, res)=>{
    console.log("hello")
})

app.listen(8080, () =>{
    console.log('listening')
})