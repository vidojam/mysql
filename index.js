const mysql = require('mysql2'); // go get mysql2 library
const connection = require('./connection.js');

const db = mysql.createConnection(connection);

db.query("SELECT * FROM customers", (err, data) => {
  if (err) {
    console.error(err);
  }
    console.table(data);
    db.end();
});
