const express=require("express");
const router=express.Router();
const pool=require("../pool")

router.get("/",(req,res)=>{
    var title = req.query.pname
    console.log(title)
    var sql = "SELECT * FROM lyl_productlist WHERE  concat(`title`,`details`,`price`,`productclass`) like concat('%',?,'%')";
    if(title){
        pool.query(sql,[title],(err,result)=>{
            if(err)throw err;
            res.send(result)
        })
    }
})


module.exports=router