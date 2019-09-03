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

var server=express();
server.use(express.static("public"));
server.listen(3000,()=>{
  console.log(" 3000端口正在运行...") 
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
server.use("/banner",banner)
server.use("/banner2",banner2)




