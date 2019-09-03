const express=require("express");
const router=express.Router();
const pool=require("../pool")

router.get("/",(req,res)=>{
    var uid = req.query.uid;
    var id = req.query.id;
    console.log(uid,id);
            var sql = `UPDATE lyl_cart SET isshow=0 WHERE id=? AND uid=?`
            pool.query(sql,[id,uid],(err,result)=>{
                if(err) throw err;
                res.send({code:1,msg:"修改成功"})
            })
})


module.exports=router