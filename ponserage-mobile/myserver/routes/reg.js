const express=require("express");
const router=express.Router();
const pool=require("../pool")


router.post("/",(req,res)=>{
    var uname = req.body.uname
    var upwd= req.body.upwd
    var uphone = req.body.phone
    var sql = "SELECT uname,uphone FROM lyl_reg where  uname=? or uphone=?"
    pool.query(sql,[uname,uphone],(err,result)=>{
        if(err)throw err;
        console.log(result)
        if(result.length>0){
            res.send({code:-1,msg:"用户已存在"})
            return
        }else{
    // console.log(phone,upwd)
    var sql = "INSERT INTO lyl_reg set ?"
    var obj={uname,upwd,uphone}
    pool.query(sql,[obj],(err,result)=>{
        if(err)throw err;
        var sql = "SELECT id FROM lyl_reg WHERE uname=? AND upwd=?"
        pool.query(sql,[uname,upwd],(err,result)=>{
            // console.log(result.id)
            req.session.uid = result[0]
            console.log(req.session.uid)
            res.send({code:1,msg:"注册成功",data:result[0]})
        })
    }) 
    }
    })
})









module.exports= router