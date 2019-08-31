<template>
    <div class=".contain">
        <!-- <h1>个人信息</h1> -->
        <div class="myHeader">
            <span>个人中心</span> 
        </div>
        <div class="myInfomation">
            <div class="myMsg">
                <div class="myPhoto">
                    <img src="../assets/img/body_test_1.jpg" alt="">
                </div>
                <div class="myTxt">
                    <span>用户名</span>
                    <span>手机号</span>
                    <span>普通会员</span>
                </div>
            </div>
            <div class="myorder">
                <div class="orderItem">
                    <img class="mypay" src="../assets/img/information_dfk.png" alt="">
                    <span>待付款</span> 
                </div>
                <div class="orderItem">
                    <img src="../assets/img/information_dfh.png" alt="">
                    <span>待发货</span> 
                </div>
                <div class="orderItem">
                    <img src="../assets/img/information_dsh.png" alt="">
                    <span>待收货</span> 
                </div>
                <div class="orderItem">
                    <img src="../assets/img/infomation_pj.png" alt="">
                    <span>待评价</span> 
                </div>   
                <div class="orderItem">
                    <img src="../assets/img/information_tk.png" alt="">
                    <span>退货/款</span> 
                </div>
            </div>
        </div>
        <div class="myBody">
            <div class="bodyItem">
                <span>收货地址</span>
                <img src="../assets/img/information_right.png" alt="">
            </div>
            <div class="bodyItem">
                <span>收货地址</span>
                <img src="../assets/img/information_right.png" alt="">
            </div>
            <div class="bodyItem">
                <span>收货地址</span>
                <img src="../assets/img/information_right.png" alt="">
            </div>
            <div class="bodyItem">
                <span>收货地址</span>
                <img src="../assets/img/information_right.png" alt="">
            </div>
            <div class="bodyItem">
                <span>问题与反馈</span>
                <img src="../assets/img/information_right.png" alt="">
            </div>
            <div class="myFooter">
                <button>退出登录</button>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{

        }
    }
}
</script>
<style scoped>
@media screen and (max-width:375px){
#app .contain{
    padding: 0 10px;
}
#app .myHeader{
    font-size: 23px;
    position: relative;
    top:-8px;
    height: 150px;
    font-family:"楷体";
    box-sizing: border-box; 
    font-weight:bolder;
    background: url('../assets/img/information_bg.jpg') no-repeat;
    background-size: 375px 150px ;
}
#app .myHeader span{
    position: relative;
    top:20px;
}
#app .myInfomation{
    height: 210px;
    width: 340px;
    background: rgba(255, 255, 255,.8);
    /* margin: auto; */
    position: absolute;
    top:70px;
    left:17px;
    border-radius: 20px;
}
#app .myInfomation .myMsg{
    display:flex;
    padding:15px 15px;
    border-bottom:1px solid #eee;
}
#app .myInfomation .myPhoto{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    overflow: hidden;
}
#app .myInfomation .myPhoto img{
    width: 100px;
    height: 100px;
}
#app .myInfomation .myTxt{
    margin-left: 10px;
    padding:5px 0;
    box-sizing: border-box;
}
#app .myInfomation .myTxt span{
    display: block;
    text-align: left;
}
#app .myInfomation .myTxt span:nth-child(1){
    font-size: 20px;
    font-family: 'Courier New', Courier, monospace;
    margin-top: 10px;
    font-weight: bolder;
}
#app .myInfomation .myTxt span:nth-child(2){
    font-size: 14px;
    margin-top: 5px;
}
#app .myInfomation .myTxt span:nth-child(3){
    font-size: 12px;
    margin-top:10px;
    color:#fff;
    border-radius: 8px;
    background: rgb(241, 14, 14);
    padding:1px 1px;
    text-align: center;
}
#app .myInfomation .myorder{
    display: flex;
    justify-content: space-around;
    margin-top:10px;
}
#app .myInfomation .myorder .orderItem img{
    width: 30px;
}
#app .myInfomation .myorder .orderItem:nth-child(1){
    padding-top: 8px;
}
#app .myInfomation .myorder .orderItem img.mypay{
    width: 22px;
}
#app .myInfomation .myorder .orderItem span{
    display: block;
    font-size: 12px;
}
#app .myBody{
    margin-top:-10px;
    height: 500px;
    /* overflow: scroll; */
    background: #eee;
    padding: 140px 20px 0;
}
#app .myBody .bodyItem{
    display: flex;
    justify-content: space-between;
    padding:20px 0 0px 0;
    border-bottom:1px solid #aaa;
}
#app .myBody .bodyItem span{
    font-size: 14px;
    font-family: 'Courier New', Courier, monospace;
}   
#app .myBody .bodyItem img{
    width: 20px;
    height: 20px;
}
#app .myBody .myFooter button{
    width: 335px;
    height: 40px;
    background: rgb(2, 189, 226);
    box-shadow: 1px 1px 5px #000;
    margin-top: 30px;
    border: 0;
    outline: none;
    border-radius: 6px;
    color:#fff;
}
}
</style>