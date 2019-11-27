const express = require('express');
const pool = require('../pool');
const router = express.Router();

//定制页图片获取
router.get("/dingzhiImg1",(req,res)=>{
    var sql = 'SELECT pic FROM dingzhi_banner1';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

router.get("/dingzhiImg2",(req,res)=>{
    var sql = 'SELECT pic FROM dingzhi_banner2';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

router.get("/dingzhiImg3",(req,res)=>{
    var sql = 'SELECT pic FROM dingzhi_banner3';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//翁国欣
router.get("/wgxImg1",(req,res)=>{
	var sql = 'SELECT pic FROM wgx_banner1';
	pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//翁国欣 banner2
router.get("/wgxImg2",(req,res)=>{
	var sql = 'SELECT pic,pname FROM wgx_banner2';
	pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
module.exports = router;