// var a = 100;
// console.log(a);

//using faker
var { faker } = require('@faker-js/faker');
var mysql = require('mysql2');

fullname = faker.person.fullName();
console.log(fullname)