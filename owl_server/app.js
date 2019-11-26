const express = require('express');
const cros = require('cors');
const bodyParser = require("body-parser");
const session = require('express-session');
const reg = require('./routes/reg');
const login = require('./routes/login');
const index = require('./routes/index');
const destination = require('./routes/destination');
const dingzhi = require('./routes/dingzhi');

var server = express();
server.listen(3000,()=>{console.log("服务器启动")});
//托管静态资源到public目录下
server.use(express.static('public'));
// 跨域
server.use(cros({
    'credentials':true,
    'origin':['http://127.0.0.1:3001',"http://localhost:3001"]
}));
// 使用session 中间件
server.use(session({
    secret:'secret',                //对session id 相关的 cookie 进行签名
    resave:true,                    //每次请求是否都更新数据
    saveUninitialized:false,        //是否保存未初始化的对话
    cookie : {
        maxAge : 1000 * 60 * 3,     //设置session的有效时间,毫秒为单位
    },
}));
server.use(bodyParser.urlencoded({extended:false}))

// 引入路由
server.use(reg);
server.use(login);
server.use(index);
server.use(destination);
server.use(dingzhi);
