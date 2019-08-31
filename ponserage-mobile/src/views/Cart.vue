<template>
    <div class="contain">
        <!-- <h1>购物车</h1> -->
        <div class="cartTitle">
            <span>购物车</span>
        </div>
        <div class="empCart" v-show="list.length==0">
            <img src="../assets/img/emp_cart.png" alt="">
            <p>空空如也~</p>
            <p>快去买买买享受购物的快感吧</p>
            <button @click="goHome">去逛逛</button>
        </div>
        <div class="cart-wrapper" v-show="list.length!=0">
            <div class="cartItem" v-for="(item,i) in list" :key="i">
                <div>
                    <input type="checkbox" :checked="item.cb" @click="changeCb($event,i)">
                </div>
                <div>
                    <img class="cartImg" src="../assets/img/body_test_1.jpg" alt="">
                </div>
                <div class="txt">
                    <span class="cartItemTitle">标题</span>
                    <span class="cartDetail">详情</span>
                    <span class="cartItemPrice">价格</span>
                </div>
                <div class="cartRight">
                    <div class="cartBtn">
                        <span class="minus">-</span>
                        <span class="shopCount">1</span>
                        <span class="add">+</span>
                    </div>
                    <div class="subtotal">
                        <span>小计:</span>
                        <span class="subPrice">钱</span>
                    </div>
                </div>
                <div class="cartDel">x</div>
            </div>
        </div>
        <div class="settle" v-show="list.length>0">
            <label>
                <input @click="Allcb" v-model="cbAll" type="checkbox">全选
            </label>
            <span>合计:</span>
            <span>钱</span>
            <span>提交订单</span>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            list:[{name:"1"},{name:"1"},{name:"1"},{name:"1"},{name:"1"},{name:"1"},{name:"1"},{name:"1"},{name:"1"},{name:"1"}],
            // {name:"1"},{name:"1"},{name:"1"},{name:"1"},{name:"1"}
            cbAll:false
        }
    },
    methods:{
        goHome(){
            this.$router.go()
            sessionStorage.setItem("actived","tab1")
        },
        handleChange(value) {
        // console.log(value);
        },
        initcb(){
          for(let i = 0;i<this.list.length;i++){
              this.list[i].cb=false;
                }
            },
        changeCb(e,i){
            if(this.list[i].cb){
                this.list[i].cb=false
            }else{
                this.list[i].cb=true
            }
            console.log(this.list[i].cb);
            // let tem = true;
            for(let i = 0;i<this.list.length;i++){
                if(this.list[i].cb==false){
                    return this.cbAll=false;
                }else{
                    continue;
                }
            }
                this.cbAll=this.list[i].cb;
            },
        Allcb(){
               if(this.cbAll==true){
                this.cbAll=false
            }else{
                this.cbAll=true
            }
                for(let i=0;i<this.list.length;i++){
                    this.list[i].cb=this.cbAll
                }
        }
        },
    created(){
              this.initcb();
        }
        }
</script>
<style scoped>
@media screen and (max-width: 375px) {
::-webkit-scrollbar  
{  
	display: none!important;
    width: 0px;  
    height: 0px;
}
body{
    margin-right: 0 !important;
}
#app .contain .cartTitle{
    padding-bottom:5px;
    border-bottom: 1px solid #ddd;
    font-size: 20px;
}
#app .contain .empCart{
    margin-top: 50px;
}
#app .contain .empCart img{
    width: 40px;
}
#app .contain .empCart p:nth-child(3){
    color:#aaa;
}
#app .contain .empCart button{
    width: 120px;
    height: 40px;
    border-radius: 8px;
    background: transparent;
    outline: none;
    border: 1px solid rgb(245, 103, 21);
    color: rgb(245, 103, 21);
    text-rendering: none;
}
#app .contain .cart-wrapper{
    height: 520px;
    overflow-y: scroll;
}
#app .contain .cart-wrapper .cartItem{
    background: #eee;
    box-sizing: border-box;
    align-items: center;
    display: flex;
    padding:10px 0 10px 10px ;
}
#app .contain .cart-wrapper .cartItem .cartImg{
    width: 60px;
    height: 60px;
    border-radius: 50%;
    margin-left: 10px;
}
#app .contain .cart-wrapper .cartItem .txt{
    margin-left: 10px;
    width: 140px;
    text-align: left;
}
#app .contain .cart-wrapper .cartItem .cartItemTitle{
    display: block;
    font-family: 'Courier New', Courier, monospace;
    font-size: 16px;
    
}
#app .contain .cart-wrapper .cartItem .cartDetail{
    display: block;
    font-size: 12px;
}
#app .contain .cart-wrapper .cartItem .cartItemPrice{
    display: block;
    font-size: 14px;
    font-weight: bold;
    color: rgb(252, 15, 15); 
}
#app .contain .cart-wrapper .cartItem .cartRight{
    position: relative;
    top:10px;
}

#app .contain .cart-wrapper .cartItem .cartBtn{
    display: flex;
    margin-left: 10px;

}
#app .contain .cart-wrapper .cartItem .subtotal{
    text-align: left;
    padding-left:10px;
}
#app .contain .cart-wrapper .cartItem .subtotal span:nth-child(1){
    font-size: 12px;
}
#app .contain .cart-wrapper .cartItem .subPrice{
    color: #f00;
    font-size: 12px;
}
#app .contain .cart-wrapper .cartItem .cartBtn .add{
    display: block;
    width: 20px;
    color: #fff;
    background: #aaa;
    padding:2px;
    border-radius: 4px;
}
#app .contain .cart-wrapper .cartItem .cartBtn .shopCount{
    display: block;
    box-sizing: border-box;
    line-height: 22px;
    width: 40px;
}
#app .contain .cart-wrapper .cartItem .cartBtn .minus{
    display: block;
    width: 20px;
    color: #fff;
    background: #aaa;
    padding:2px;
    border-radius: 4px;
}

#app .contain .cart-wrapper .cartItem .cartDel{
    margin-left: 13px;
}
#app .contain .cart-wrapper .cartItem+.cartItem{
    margin-top:1px;
}
#app .contain .settle{
    display: flex;
    align-items: center;
    position: fixed;
    width: 375px;
    height: 50px;
    bottom: 55px;
    background: #eee;
    padding-left:12px; 
}
#app .contain .settle span:nth-child(2){
    margin-left: 80px;
}
#app .contain .settle span:nth-child(3){
    margin-left:10px;
    color:#f00;
    text-align: left;
    width: 80px;
}
#app .contain .settle span:nth-child(4){
    display: block;
    background: #f44;
    height: 50px;
    line-height: 50px;
    width: 110px;
    color:#fff;
}
}
</style>