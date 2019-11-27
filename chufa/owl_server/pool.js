const mysql = require('mysql');
// 创建连接池
var pool = mysql.createPool({
    host:'127.0.0.1',
    user:'root',
    password:'',
    database:'chufa',
	port:'3306',
    connectionLimit:15,
    multipleStatements:true
})
// 导出连接池对象
module.exports = pool;