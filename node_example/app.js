// var a = 100;
// console.log(a);

//using faker
var { faker } = require('@faker-js/faker');
const { error } = require('console');
var mysql = require('mysql2');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Suh@il786',
  database: 'check_with_node'
});

// var q = 'SELECT 1+5';
// var q = 'SELECT COUNT(*) as total FROM users';
// var q = 'INSERT INTO users(email) VALUES("abc@gmail.com");';
// connection.query(q, function(error, results, fields){
//     if(error) throw error;
//     console.log(results);
// })

// inserting data dynamically
var person = {email: faker.internet.email()};
connection.query('INSERT INTO users SET ?', person, function(err, result){
    if(err) throw err;
    console.log(result);
});

connection.end();