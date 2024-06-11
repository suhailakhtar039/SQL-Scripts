// var a = 100;
// console.log(a);

//using faker
var { faker } = require('@faker-js/faker');
var mysql = require('mysql2');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Suh@il786',
  database: 'check_with_node'
});

// var q = 'SELECT 1+5';
var q = 'SELECT COUNT(*) as total FROM users';
connection.query(q, function(error, results, fields){
    if(error) throw error;
    console.log(results[0].total);
})

connection.end();