const express=require("express");
const router=express.Router();
const pool=require("../pool")

router.get("/",(req,res)=>{
    var uid= req.query.uid;
    var sql = "SELECT * FROM lyl_cart WHERE uid=? AND isshow=1"
    if(uid){
    pool.query(sql,[uid],(err,result)=>{
        if(err)throw err;
        res.send(result)
    })
}
})


module.exports=router