<template>
    <div class="contain">
        <div class="detailsBody">
            <div class="detailsTitle">
                <span>{{list.title}}</span>
            </div>
            <div>
                <!-- mint ui轮播图 -->
                <div class="banner">
                    <mt-swipe :auto="3000">
                        <mt-swipe-item v-for="(img,i) of bannerimg" :key="i">
                            <img :src="'http://127.0.0.1:3000/img/product/'+img" alt="">
                        </mt-swipe-item>
                    </mt-swipe>
                </div>
            </div>
            <div class="detailsTxt">
                <span>{{list.details}}</span>
            </div>
            <div class="detailsPrice">
                <span>¥ {{list.price}}.00</span>
            </div>
            <div class="deatailsMsg">
                <span>商品单位: 件</span>
            </div>
            <div class="detailsexplain">
                <span>产品说明</span>
            </div>
            <div class="detailsImg">
                <img v-for="(img,i) of detailsimg" :key="i" :src="'http://127.0.0.1:3000/img/product/'+img" alt="">
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
                <span @click="joincart">加入购物车</span>
                <span>立即购买</span>
            </div>
        </div>
    </div>
</template>
<script>
import qs from 'qs'
export default {
    data(){
        return{
            bannerimg:[],
            detailsimg:[],
            list:{},
            uid:null
        }
    },
    props:[
        "pid"
    ],
    methods:{
        joincart(){
                let pid,uid,title,details,price,img_url,count,isshow;
                this.uid = sessionStorage.getItem("uid");
                var tmp =qs.stringify({
                pid : this.list.id,
                title : this.list.title,
                uid:this.uid,
                details : this.list.details,
                price : this.list.price,
                img_url : this.list.img_url,
                count:1,
                isshow : 1
            })
            // console.log(tmp.uid);
            if(this.uid==null){
                this.$toast({
                    message:"请先登录",
                    position:"bottom"
                });
                sessionStorage.setItem("actived","tab4")
                this.$router.push('/')
                return
            }else{
                this.axios.post('cart',tmp).then(res=>{
                    console.log(res);
                     this.$toast({
                    message:"已成功添加到购物车",
                    position:"bottom"
                });
                })
            }
        },
        getDetails(){
            this.axios.get("details",{params:{
                pid:this.pid
            }}).then(res=>{
                console.log(res);
                this.list = res.data[0]
                 this.bannerimg = this.list.banner_img.split(",")
                 this.detailsimg = this.list.details_img.split(",")
            })
        }
    },
    created(){
       
    },
    mounted(){

    },
    computed:{
        
    },
    watch:{
        pid(){
            this.getDetails();
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
    /* overflow: hidden; */
}
#app .contain .detailsBody{
    background: #fff;
    padding-top:30px;
    height: 545px;
    width: 375PX;
    border-top-left-radius: 15px;
    border-top-right-radius: 15px;
    box-shadow: 0px -1px 5px 1px #aaa;
    overflow: scroll;
}
#app .contain .detailsTitle{
    padding:5px 0px 5px 0px;
    position: absolute;
    /* width: 100%; */
    width: 376px;
    top:0;
    left:52.6%;
    border-top-left-radius: 15px;
    border-top-right-radius: 15px;
    transform: translateX(-50%);
    background: #fff;
    z-index: 20;
}
#app .contain .detailsTitle span{
    font-size: 25px;
    font-family: 'Courier New', Courier, monospace;
    font-weight: bolder;
}
#app .contain .detailsBody .banner{
    height: 400px;
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
    bottom:30px;
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