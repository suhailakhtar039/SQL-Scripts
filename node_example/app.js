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