const express = require('express');
const pool = require('../pool');
const router = express.Router();

// 登录
router.get('/login',(req,res)=>{
    var uname = req.query.uname;
    var upwd = req.query.upwd;
    var sql = 'SELECT uname,upwd,uid FROM user WHERE uname = ? AND upwd = ?';
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            var uid = result[0].uid
            req.session.uid = uid;
            req.session.uname = uname;
            res.send({code:200,msg:'login success',userName:uname});
        }else{
            res.send({code:301,msg:'login fail'});
        }
    })
})

// 获取uid
router.get('/getUid',(req,res)=>{
    var uid = req.session.uid;
    var uname = req.session.uname;
    res.send({uid,uname});
})

// 退出登录
router.get('/quit',(req,res)=>{
    req.session.uid = null;
    res.send(req.session.uid);
})

module.exports = router