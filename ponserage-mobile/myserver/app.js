const express=require("express")
const mysql=require("mysql")
const cors=require("cors");
const bodyParser=require("body-parser")
const session=require("express-session");
const reg=require("./routes/reg");
const login=require("./routes/login");
const banner=require('./routes/banner')
const banner2=require('./routes/banner2')
const selectpim = require("./routes/getpim")
const index = require("./routes/index")
const product = require("./routes/product")
const shopclass = require("./routes/class")
const details = require("./routes/details")
const cart = require("./routes/cart")
const getcart = require("./routes/getcart")
const addcount = require("./routes/addcount")
const selectcount = require("./routes/selectcount")
const delshop = require("./routes/delshop")
// const SendSms = require("./routes/sendsm")

var server=express();
server.use(express.static("public"));
server.listen(5050,()=>{
  console.log(" 5050端口正在运行...") 
})
server.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true
}))
server.use(session({
    secret:"128位字符串",//安全字符串
    resave:true,
    saveUninitialized:true,
}))
server.use(bodyParser.urlencoded({extended:false}))

server.use("/reg",reg);
server.use("/login",login);
server.use("/selectpim",selectpim)
server.use("/index",index)
server.use("/product",product)
server.use("/shopclass",shopclass)
server.use("/details",details)
server.use("/getcart",getcart)
server.use("/cart",cart)
server.use("/addcount",addcount)
server.use("/selectcount",selectcount)
server.use("/delshop",delshop)
// server.use("/SendSms",SendSms)
server.use("/banner",banner)
server.use("/banner2",banner2)




