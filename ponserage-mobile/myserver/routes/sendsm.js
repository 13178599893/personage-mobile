const express=require("express");
const router=express.Router();
const pool=require("../pool")
const SMSClient = require("@alicloud/sms-sdk")

const accessKeyId = "LTAI4Fkb6aAhQtPf8WVo4nq6"
const secretAccessKey = "rmmXtCmRwlVtEjuFJt2vlWP9M7KBoF"

// var sendmsg = {};
// module.exports = sendmsg;
var $code = ('000000'+Math.floor(Math.random()*999999)).slice(-6);
let smsClient = new SMSClient({
    accessKeyId,
    secretAccessKey
})
router.get("/",(req,res)=>{
        let $req= req
        let $res = res
        


    var phone = $req.query.phone
    var sql = "select uphone from lyl_reg where uphone=?"
    pool.query(sql,[phone],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            $res.send({
                code:-1,
                msg:"该手机号已注册"
            })
            return
        }else{
        

        var params = {
        "PhoneNumbers": `${phone}`,
        "SignName": "罗11的个人项目",
        "TemplateCode": "SMS_173476201",
        "TemplateParam": `{'code':${$code}}`
        }

      smsClient.sendSMS(params).then(res=>{
          let {
              Code
          } = res
          if(Code==="OK"){
            //   var phone = $req.query.phone;
            //   var sql = "select id from lyl_reg where uphone=?"
            //   pool.query(sql,[phone],(err,result)=>{
            //       if(err) throw err;
            //       if(result.length>0){
            //           $res.send({
            //               code:-1,
            //               message:$code,
            //               msg:"手机号已存在",
            //           })
            //       }else{
            //           $req.session.phone = phone;
                      $res.send({
                          code:1,
                          msg:`短信发送成功,验证码为${$code}`,
                          data:$code,
                          phone:phone
                      })
                //   }
            //   })
          }
      })



        }
    })
})





// const Core = require('@alicloud/pop-core');

// var client = new Core({
//   accessKeyId: '<accessKeyId>',
//   accessKeySecret: '<accessSecret>',
//   endpoint: 'https://dysmsapi.aliyuncs.com',
//   apiVersion: '2017-05-25'
// });

// var params = {
//   "RegionId": "default",
//   "PhoneNumbers": "13178599893",
//   "SignName": "罗11的个人项目",
//   "TemplateCode": "SMS_173476201",
//   "TemplateParam": "{\"code\":\"11111\"}"
// }

// var requestOption = {
//   method: 'POST'
// };

// client.request('SendSms', params, requestOption).then((result) => {
//   console.log(JSON.stringify(result));
// }, (ex) => {
//   console.log(ex);
// })





module.exports=router