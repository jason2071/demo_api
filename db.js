const mysql = require('mysql')

const connectionDB = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '1q2w3e4r',
    database: 'drink',
    connectionLimit: 10,
    timezone: 'utc'
})

module.exports = connectionDB