const express=require("express");
const router=express.Router();
const pool=require("../pool")

router.get("/",(req,res)=>{
    var uid = req.query.uid;
    var count = req.query.count
    var id = req.query.pid;
    console.log(uid,id);
    // var sql = "SELECT count FROM lyl_cart WHERE id=? AND uid=?"
    // pool.query(sql,[id,uid],(err,result)=>{
    //     if(err) throw err;
    //     console.log(result);
    //     if(result.length>0){
    //         console.log(result[0].count);
    //         var count =result[0].count
    //         console.log(count);
            // var sql = `UPDATE lyl_cart SET count=${count+=1} WHERE id=?`
            var sql = `UPDATE lyl_cart SET count=? WHERE id=? AND uid=?`
            pool.query(sql,[count,id,uid],(err,result)=>{
                if(err) throw err;
                res.send({code:1,msg:"修改成功"})
            })
    //     }
    // })
})


module.exports=router