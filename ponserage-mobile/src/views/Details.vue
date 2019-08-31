<template>
    <div class="contain">
        <div class="detailsBody">
            <div class="detailsTitle">
                <span>标题</span>
            </div>
            <div>
                <!-- mint ui轮播图 -->
                <div class="banner">
                    <mt-swipe :auto="3000">
                        <mt-swipe-item>
                            <img height="200px" src="../assets/img/banner_test.jpg" alt="">
                        </mt-swipe-item>
                        <mt-swipe-item>
                            <img height="200px" src="../assets/img/banner_test.jpg" alt="">
                        </mt-swipe-item>
                        <mt-swipe-item>
                            <img height="200px" src="../assets/img/banner_test.jpg" alt="">
                        </mt-swipe-item>
                    </mt-swipe>
                </div>
            </div>
            <div class="detailsTxt">
                <span>春季新款男士休闲上衣韩版纯棉纯色圆领T恤男时尚男装</span>
            </div>
            <div class="detailsPrice">
                <span>¥199.00</span>
            </div>
            <div class="deatailsMsg">
                <span>商品单位: 件</span>
            </div>
            <div class="detailsexplain">
                <span>产品说明</span>
            </div>
            <div class="detailsImg">
                <img v-for="(p,i) in 10" :key="i" src="../assets/img/details_test.jpg" alt="">
            </div>
            <div class="detailFooter">
                <div class="detailsFooterLeft">
                    <img src="../assets/img/footer_service.png" alt="">
                    <p style="margin:0;font-size:12px">客服</p>
                </div>
                <div class="detailsFooterLeft">
                    <img src="../assets/img/tabbar_cart_select.png" alt="">
                    <p style="margin:0;font-size:12px">购物车</p>
                </div>
                <span>加入购物车</span>
                <span>立即购买</span>
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
::-webkit-scrollbar  
{  
	display: none!important;
    width: 0px;  
    height: 0px;  
}
#app .contain{
    margin:0;
    
}
#app .contain .detailsBody{
    background: #fff;
    height: 545px;
    width: 375PX;
    border-top-left-radius: 15px;
    border-top-right-radius: 15px;
    box-shadow: 0px -1px 5px 1px #aaa;
    overflow: scroll;
}
#app .contain .detailsTitle{
    padding-top:10px;
}
#app .contain .detailsTitle span{
    font-size: 25px;
    font-family: 'Courier New', Courier, monospace;
    font-weight: bolder;
}
#app .contain .detailsBody .banner{
    height: 200px;
    margin-top: 10px;
    /* border-top-right-radius:20px;
    border-top-left-radius:20px; */
    overflow: hidden;
}
#app .contain .detailsBody .banner img{
    width: 375px;
    /* border-top-right-radius:20px;
    border-top-left-radius:20px; */
}
#app .contain .detailsBody .detailsTxt{
    font-size: 20px;
    margin-top: 10px;
    font-family: 'Courier New', Courier, monospace;
    padding-left:10px;
    width: 300px;
    text-align: left;
}
#app .contain .detailsBody .detailsPrice{
    text-align: left;
    margin-top:10px;
    padding-left:25px; 
    font-size: 25px;
    color:#f00;
    font-weight: bolder;
}
#app .contain .detailsBody .deatailsMsg{
    text-align: left;
    padding-left: 15px;
    margin-top: 10px;
}
#app .contain .detailsBody .detailsexplain{
    text-align: left;
    padding-left:15px;
    margin-top: 13px;
    padding: 10px 15px;
    font-size: 18px;
    border-top: 1px solid #aaa;
    border-bottom: 1px solid #aaa;
}
#app .contain .detailsBody .detailsImg img{
    width: 375px;
  
}
#app .contain .detailsBody .detailFooter{
    display: flex;
    position: absolute;
    z-index: 50;
    bottom:0;
    box-sizing: border-box;
    padding:5px 0;
    align-items: center;
    background: #eee;
    width: 375px;
}
#app .contain .detailsBody .detailFooter img{
    width: 25px;
    height: 25px;

}
#app .contain .detailsBody .detailFooter span {
    display: block;
    width: 80px;
    color: #fff;
}
#app .contain .detailsBody .detailFooter span:nth-child(3){
    background:linear-gradient(to right, #ffd01e, #ff8917);
    padding:10px 15px;
    border-top-left-radius: 20px;
    border-bottom-left-radius: 20px;
    margin-left:30px;
}
#app .contain .detailsBody .detailFooter .detailsFooterLeft{
    margin-left: 25px;
}
#app .contain .detailsBody .detailFooter span:nth-child(4){
    background: linear-gradient(to right, #ff6034, #ee0a24);
    padding:10px 15px;
     border-top-right-radius: 20px;
    border-bottom-right-radius: 20px;
}
}
</style>