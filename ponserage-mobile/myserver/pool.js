const express=require("express")
const mysql=require("mysql")
var pool=mysql.createPool({
    host:"w.rdc.sae.sina.com.cn",
    user:"l2llz111j2",
    password:"k13hiklmzyii50kmi500zijmmxm5hjwy41x0jz0k",
    post:3306,
    database:"app_lylpersonage",
    connectionLimit:10
});
module.exports=pool;