const express=require("express")
const mysql=require("mysql")
var pool=mysql.createPool({
    host:"127.0.0.1",
    user:"root",
    password:"",
    post:3306,
    database:"lyl",
    connectionLimit:15
});
module.exports=pool;