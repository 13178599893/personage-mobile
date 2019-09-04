<template>
    <div class="contain">
        <!-- <h1>注册页面</h1> -->
        <div class="regHeader">
            <img @click="back" src="../assets/img/back_left.png" alt="">
            <span>注册</span>
        </div>
        <div class="regInput">
            <div class="txt">  
                <span>用户名</span>
            </div>
            <div class="myInput">
                <input v-model="uname" type="text" name="uname" placeholder="请输入用户名(不少于6个字符,建议用英文字母或数字)">
            </div>
            <div class="txt">  
                <span>密码</span>
            </div>
            <div class="myInput">
                <input v-model="upwd" type="password" name="upwd" placeholder="请输入密码(6~16字符的字母或者数字)">
            </div>
            <div class="txt">  
                <span>手机号</span>
            </div>
            <div class="myInput">
                <input type="text" v-model="uphone" name="phone" placeholder="请输入手机号">
            </div>
            <div class="txt">  
                <span>验证码</span>
            </div>
            <div class="myInput">
                <input @focus="show = true" type="text" v-model="utest" maxlength="6" name="utest" placeholder="请输入验证码">
            </div>
            <button class="getTest">获取验证码</button>
            <div class="regButton">
                <button @click="Reg">注册</button>
            </div>
            <div class="goLoginButton">
                <button @click="back">登录</button>
            </div>
            <div>
                <van-number-keyboard
                :show="show"
                extra-key="."
                close-button-text="完成"
                @blur="show = false"
                @input="onInput"
                @delete="onDelete"
                />
                </div>
        </div>
    </div>
</template>
<script>
import bus from '../bus'
import qs from 'qs'
import { NumberKeyboard } from 'vant'
export default {
    data(){
        return{
            a:"tab4",
            uname:"",
            upwd:"",
            uphone:"",
            utest:"",
            show:true
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
        back(){
            // this.$router.go(-1);
            this.$router.push('/')
            sessionStorage.setItem('actived',this.a);
            // bus.$emit("myActive",this.a)
        },
        // getsm(){
        //     let phone = this.uphone
        //     this.axios.get("SendSms",{params:{
        //         phone
        //     }}).then(res=>{
        //         console.log(res);
        //     })
        // },
        Reg(){
            var unamereg = /^[0-9a-z]{6,}$/i
            var upwdreg = /^[0-9a-z]{6,16}$/i
            var uphonereg = /^1[3-8]\d{9}$/
            if(unamereg.test(this.uname)==false||this.uname==""){
                this.$toast({
                    message:"用户名格式不正确",
                    position:"bottom"
                })
                return
            }else if(upwdreg.test(this.upwd)==false||this.upwd==""){
                this.$toast({
                    message:"密码格式不正确",
                    position:"bottom"
                })
                return
            }else if(uphonereg.test(this.uphone)==false||this.uphone==""){
                 this.$toast({
                    message:"手机号格式不正确",
                    position:"bottom"
                })
                return
            }else{
                var uname = this.uname;
                var upwd = this.upwd;
                var phone = this.uphone;
                var tmp = qs.stringify({
                    uname,upwd,phone
                })
                this.axios.post("reg",tmp).then(res=>{
                    console.log(res);
                    if(res.data.code==-1){
                        this.$toast({
                            message:"用户已存在,请登录",
                            position:"bottom"
                        })
                        return
                    }else if(res.data.code==1){
                        this.$toast({
                            message:"注册成功",
                            position:"bottom"
                        })
                        let uid = res.data.data.id
                        sessionStorage.setItem("uid",uid)
                        sessionStorage.setItem("actived","tab1")
                        this.$router.push('/')
                    }
                })
            }
            //验证码验证成功后发axios去数据库查询是否存在手机号,如果存在返回存在信息,不然返回注册成功信息加跳转到主页,将uid保存在session中
        }
    }    
}
</script>
<style scoped>
@media screen and (max-width:375px){
#app .contain{
    padding: 0 10px;
}
#app .regHeader{
    display: flex;
    align-items: center;
    font-size: 23px;
    font-family:"楷体";
    /* padding-left:10px; */
    box-sizing: border-box; 
    font-weight:bolder;
    padding-bottom:10px;
    border-bottom:1px solid #ddd;
}
#app .regHeader img{
    width: 20px;
    height: 20px;
    
}
#app .regHeader span{
    display: block;
    margin-left:130px;
}
#app .regInput .txt{
    text-align: left;
    padding-left:15px;
    height: 45px;
    line-height: 45px;
    background: #eee;
    color:#aaa;
}
#app .regInput .myInput input{
    width: 355px;
    height: 45px;
    border:1px solid #ddd;
    border-left: 0;
    border-right: 0;
    outline: none;
    box-sizing: border-box;
    color: #aaa;
    padding-left: 10px;
}
#app .regInput .getTest{
    width: 130px;
    height: 40px;
    background: #aaa;
    /* border-radius: 6px; */
    border:0;
    outline: none;
    box-shadow: 2px 2px 5px 1px #ddd;
    position: absolute;
    right: 10px;
    top:364px;
    color: #fff;
}
#app .regInput .regButton{
    margin-top:25px;
}
#app .regInput .regButton button{
    width: 355px;
    height: 45px;
    background: rgb(14, 153, 247);
    color: #fff;
    font-size: 20px;
    font-family: 'Courier New', Courier, monospace;
    outline: none;
    box-shadow: 2px 2px 5px 1px #aaa;
    border-radius: 6px;
    border:0;
}
#app .regInput .goLoginButton Button{
    margin-top:25px;
}
#app .regInput .goLoginButton button{
    width: 355px;
    height: 45px;
    background: rgb(129, 129, 129);
    color: #fff;
    font-size: 20px;
    font-family: 'Courier New', Courier, monospace;
    outline: none;
    box-shadow: 2px 2px 5px 1px #aaa;
    border-radius: 6px;
    border:0;
}
}
</style>