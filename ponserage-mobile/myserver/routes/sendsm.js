const express=require("express");
const router=express.Router();
const pool=require("../pool")
const SMSClient = require("@alicloud/pop-core")

const accessKeyID = "LTAI4Fkb6aAhQtPf8WVo4nq6"
const secretAccessKey = "rmmXtCmRwlVtEjuFJt2vlWP9M7KBoF"

let smsClient = new SMSClient({
    accessKeyID,
    secretAccessKey
})

router.get("/",(req,res)=>{
    var mycode = ('000000'+Math.floor(Math.random()*999999)).slice(-6);
    var phone = req.query.phone
    var params = {
        "RegionId": "default",
        "TemplateType": "1",
        "TemplateName": "lyl个人项目",
        "TemplateContent": `您正在申请手机注册，验证码为：${mycode}，5分钟内有效！`
      }

      smsClient.send(params).then(res=>{
          let {
              Code
          } = res
          if(Code==="OK"){
              var phone = req.query.phone;
              var sql = "select id from lyl_reg where phone=?"
              pool.query(sql,[phone],(err,result)=>{
                  if(err) throw err;
                  if(result.length>0){
                      res.send({
                          code:-1,
                          msg:"手机号已存在",
                      })
                  }else{
                      req.session.phone = phone;
                      res.send({
                          code:1,
                          msg:`短信发送成功,验证码为${mycode}`
                      })
                  }
              })
          }
      })



})







module.exports=router