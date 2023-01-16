const mysql = require('mysql2');

const db = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'Y121200gm',
    database:'nuupi'
});

db.connect(function(err){
    if(err)throw err;
    console.log('DATABASE CONNECTED');
});

module.exports=db;