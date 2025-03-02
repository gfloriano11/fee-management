import mysql from 'mysql2'

export const connnection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'fee-management'
});