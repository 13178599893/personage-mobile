const express=require("express");
const router=express.Router();
const pool=require("../pool")

router.get("/",(req,res)=>{
    var id= req.query.uid;
    var sql = "SELECT phone FROM boss_reg WHERE id=?"
    pool.query(sql,[id],(err,result)=>{
        if(err)throw err;
        res.send(result)
    })
})


module.exports=router