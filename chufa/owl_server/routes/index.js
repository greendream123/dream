const express = require('express');
const pool = require('../pool');
const router = express.Router();

// 第一个列表信息
router.get("/indexImg",(req,res)=>{
    var sql = 'SELECT * FROM index_image';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

module.exports = router;