const express=require("express");
const router=express.Router();
const pool=require("../pool")

router.get("/",(req,res)=>{
    var id = req.query.pid
    console.log(id)
    var sql = "SELECT * FROM lyl_productlist WHERE id=?"
    pool.query(sql,[id],(err,result)=>{
        if(err)throw err;
        res.send(result)
    })
})


module.exports=router