const express=require("express");
const router=express.Router();
const pool=require("../pool")

router.get("/",(req,res)=>{
    var uname = req.query.uname
    var upwd = req.query.upwd
    console.log(uname,upwd)
    var sql = "select id from lyl_reg where uname=? AND upwd=?"
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err)throw err;
        console.log(result)
        if(result.length>0){
            req.session.uid = result[0]
            res.send({code:1,msg:"登录成功",data:result[0]})
        }else{
            res.send({code:-1,msg:"登录失败"})
        }
    })
})



module.exports= router