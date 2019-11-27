const express = require('express');
const pool = require('../pool');
const router = express.Router();

// 验证用户名是否重复
router.get('/vali',(req,res)=>{
    var uname = req.query.uname;
    var sql = 'SELECT uid FROM user WHERE uname = ?'
    pool.query(sql,[uname],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({code:0,msg:"用户名已被占用"})
        }else{
            res.send({code:1,msg:"用户名可以使用"})
        }
    })
})

// 注册
router.post('/reg',(req,res)=>{
    var obj=req.body;
	if (!obj.uname) {
		res.send({code:401,msg:'uname required'});
		return;
	}
	if (!obj.upwd) {
		res.send({code:402,msg:'upwd required'});
		return;
	}
//	if (!obj.upwds) {
//		res.send({code:403,msg:'upwds required'});
//		return;
//	}
//	if (!obj.email) {
//		res.send({code:403,msg:'email required'});
//		return;
//	}
//	if (!obj.phone) {
//		res.send({code:404,msg:'phone required'})
//	}
    var sql = 'INSERT INTO user SET ?';
    pool.query(sql,[obj],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send({code:1,msg:"用户注册成功"});
        }else{
            res.send({code:0,msg:"用户注册失败"})
        }
    })
})

module.exports = router;