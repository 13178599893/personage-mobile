const express=require("express");
const router=express.Router();
const pool=require("../pool")

router.get("/",(req,res)=>{
    var id= req.query.uid;
    var sql = "SELECT uname,uphone FROM lyl_reg WHERE id=?"
    if(id){
    pool.query(sql,[id],(err,result)=>{
        if(err)throw err;
        res.send(result)
    })
}
})


module.exports=router