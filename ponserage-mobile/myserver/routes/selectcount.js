const express=require("express");
const router=express.Router();
const pool=require("../pool")

router.get("/",(req,res)=>{
    var uid = req.query.uid;
    var id = req.query.pid;
    console.log(uid,id);
    var sql = "SELECT count FROM lyl_cart WHERE id=? AND uid=?"
    pool.query(sql,[id,uid],(err,result)=>{
        if(err) throw err;
        res.send(result)
        
    })
})


module.exports=router