<template>
    <div>
        <!-- <h1>个人信息</h1> -->
        <div class="myLoginTitle">
             <img src="../assets/img/back_left.png" alt="">
            <span>登录</span>
        </div>
        <div class="myBody">
            <div class="myLogo">
                <img src="../assets/img/tabbar_my.png" alt="">
            </div>
            <div class="myInput">
                <input  type="text" v-model="uname" placeholder="请输入用户名" name="uname">
            </div>
            <div class="myInput">
                <input type="password" v-model="upwd" placeholder="请输入密码" name="upwd">
            </div>
            <div class="myInput">
                <input type="text" v-model="utest" placeholder="请输入验证码" name="utest">
            </div>
            <div class="myTestInput"  @click="changeTestVal">
                <lyl-identify :identifyCode="identifyCode" class="myCanvas"></lyl-identify>
            </div>
            <div class="goLoginDiv">
                <div class="loginTxt">
                    <span @click="goLogin">请先注册</span>
                    <span>忘记密码</span>
                </div>
                <div class="loginBtn">
                    <button @click="Login">登录</button>
                </div>
                  </div>
                  <!-- <div>
                    <van-number-keyboard
                    :show="show"
                    extra-key="."
                    close-button-text="完成"
                    @blur="show = false"
                    @input="onInput"
                    @delete="onDelete"
                    />
                  </div> -->
            </div>
    </div>
</template>
<script>
import Identify from './Identify'
import { NumberKeyboard } from 'vant'
// import { axiosLogin } from '../util/Api'
// import { async } from 'q';
export default{
    data(){
        return{
            identifyCode: "",
            identifyCodes: "1234567890",
            uname:"",
            upwd:"",
            utest:"",

            msg:""
        }
    },
    methods:{
        onInput(value) {
            this.utest+=value
        },
        onDelete() {
            this.utest=this.utest.slice(0,-1)
            console.log(this.utest.slice(0,-1));
        },
        Login(){
            var unamereg = /^[0-9a-z]{6,}$/i
            var upwdreg = /^[0-9a-z]{6,16}$/i
            if(unamereg.test(this.uname)==false||this.uname==""){
                this.$toast({
                    message:"用户名或密码不正确",
                    position:"top"
                })
                return
            }else if(upwdreg.test(this.upwd)==false||this.upwd==""){
                this.$toast({
                    message:"用户名或密码不正确",
                    position:"top"
                })
                return
            }else if(this.identifyCode!=this.utest){
                this.$toast({
                    message:"验证码不正确",
                    position:"top"
                })
                this.refreshCode();
                return
            }else{
                var uname=this.uname;
                var upwd = this.upwd;
                this.axios.get("login",{params:{
                    uname,upwd
                }}).then(res=>{
                    console.log(res)
                    console.log(res.data.data);
                    if(res.data.code==1){
                        let uid = res.data.data.id
                        this.uid=uid
                        sessionStorage.setItem("uid",uid)
                        sessionStorage.setItem("actived","tab1")
                        this.$router.go()
                    }else{
                        this.$toast({
                    message:"用户名或密码不正确",
                    position:"bottom"
                             })
                    }
                })
                //调用异步封装的axios
                // this.login()
               
            }
        },
        // 异步封装axios
        // async login(){
        //     let uname= this.uname;
        //     let upwd = this.upwd
        //     let params = {
        //         uname,upwd
        //     }
        //     const url = "http://127.0.0.1:5050/login"
        //     const res = await this.$http.get(url,params)
        //     this.msg = res.msg
        // },
        goLogin(){
            this.$router.push("/Reg")
        },
         ramdomNum(min,max){
            return Math.floor(Math.random()*(max-min)+min)
        },
         refreshCode(){
            this.identifyCode="";
            this.makeCode(this.identifyCodes,4)
            
        },
        makeCode(o,l){
            for(let i = 0;i<l;i++){
                this.identifyCode+=this.identifyCodes[this.ramdomNum(0,this.identifyCodes.length)]
            }
        },
        changeTestVal(){
            this.identifyCode="";
            this.makeCode(this.identifyCodes,4)
        }
    },
    components:{
        "lyl-identify":Identify
    },
    created(){
        // console.log(axiosLogin);
    },
    mounted() {
        this.identifyCode="";
        this.makeCode(this.identifyCodes,4)
    },
}
</script>
<style scoped>
@media screen and (min-width:375px) {
#app .myLoginTitle{
    display: flex;
    align-items: center;
    font-size: 23px;
    font-family:"楷体";
    font-weight:bolder;
    padding-left:10px;
    box-sizing: border-box; 
    padding-bottom:10px;
    border-bottom:1px solid #ddd;
}
#app .myLoginTitle img{
    width: 20px;
    height: 20px;
    
}
#app .myLoginTitle span{
    margin-left:130px;
}
#app .myBody .myLogo{
    width: 80px;
    height: 80px;
    margin:auto;
    margin-top: 40px;
    border-radius: 50%;
    background: #eee;
}
#app .myBody .myLogo img{
    width: 35px;
    margin-top:20px; 
}
#app .myBody .myInput{
    margin-top: 30px;
}
#app .myBody .myInput input{
    border:1px solid #ddd;
    border-left: 0;
    border-right: 0;
    box-sizing: border-box;
    padding-left:30px;
    outline: none;
    width: 370px;
    height: 45px;
}
#app .myBody .myTestInput{
    position: absolute;
    right: 5px;
    top:356px;
    height: 43px;
    box-sizing: border-box;
    padding-left: 5px;
    border-left:1px solid #aaa;
    
}
#app .myBody .goLoginDiv .loginTxt{
    display: flex;
    justify-content: space-between;
    padding: 0 20px;
    margin-top: 25px;
    font-size: 14px;
}
#app .myBody .goLoginDiv .loginBtn button{
    width: 340px;
    height: 40px;
    margin-top:10px;
    background: rgb(83, 171, 206);
    border:0;
    color: #fff;
    font-size: 16px;
    border-radius: 6px;
    outline: none;
}
}
</style>