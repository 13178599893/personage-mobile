const express=require("express");
const router=express.Router();
const pool=require("../pool")


router.post("/",(req,res)=>{
    var phone = req.body.phone
    var upwd= req.body.upwd
    var sql = "SELECT phone FROM boss_reg where phone=?"
    pool.query(sql,[phone],(err,result)=>{
        if(err)throw err;
        console.log(result)
        if(result.length>0){
            res.send({code:-1,msg:"用户已存在"})
            return
        }else{

  
    // console.log(phone,upwd)
    var sql = "INSERT INTO boss_reg set ?"
    var obj={phone,upwd}
    pool.query(sql,[obj],(err,result)=>{
        if(err)throw err;
        var sql = "SELECT id FROM boss_reg WHERE phone=? AND upwd=?"
        pool.query(sql,[phone,upwd],(err,result)=>{
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