const express = require('express');
const pool = require('../pool');
const router = express.Router();

// 目的地页图片
router.get("/destImgf",(req,res)=>{
    var sql = 'SELECT * FROM destination_f';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
router.get("/destImgc",(req,res)=>{
    var sql = 'SELECT * FROM destination_c';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})


module.exports = router;