const express=require("express");
const router=express.Router();
const pool=require("../pool")

router.post("/",(req,res)=>{
    var pid = req.body.pid
    var uid = req.body.uid
    var title = req.body.title
    var details = req.body.details
    var price = req.body.price
    var img_url = req.body.img_url
    var isshow = 1;
    var count =1 ;
    var obj = {pid,uid,title,details,price,img_url,count,isshow}
    console.log(pid,uid,title,details,price,img_url,isshow)

    var sql = "SELECT count FROM lyl_cart WHERE pid=? AND uid=?"
    pool.query(sql,[pid,uid],(err,result)=>{
        if(err) throw err;
        console.log(result);
        if(result.length>0){
            console.log(result[0].count);
            var count =result[0].count
            console.log(count);
            var sql = `UPDATE lyl_cart SET count=${count+=1} WHERE pid=?`
            pool.query(sql,[pid],(err,result)=>{
                if(err) throw err;
                res.send({code:1,msg:"添加成功"})
            })
        }else{
            var sql = "INSERT INTO lyl_cart set ?"
            pool.query(sql,[obj],(err,result)=>{
                if(err)throw err;
                // res.send(result)
                if(result.affectedRows>0){
                    res.send({code:1,msg:"添加成功"})
                }
            })
        }
    })

})



module.exports=router