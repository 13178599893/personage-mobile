<template>
    <div>
        <div class="contain">     
            <!-- <h1>首页</h1> -->
            <div class="titleFixed">
                <span>lyl</span>
                <img @click="moveNavbbar" v-show="!showMask" class="imgFixed" src="../assets/img/icon_all.png" alt="">
            </div>
            <!-- 遮罩 -->
            <div @click="hideNavbbar" class="mask" v-show="showMask"></div>
            <!-- 导航栏 -->       
            <div class="indexNavbar" :style="MarginR">
                <ul @click="ToProduct">
                    <li @click="hideNavbbar">
                        <img src="../assets/img/navbar_home.png" alt="">
                       <span>首页</span> 
                    </li>
                    <li>
                        <img data-val="POLO" data-canclick="true" src="../assets/img/navbar_polo.png" alt="">
                        <span data-val="POLO" data-canclick="true">POLO </span>
                    </li>
                    <li >
                        <img data-canclick="true" data-val="夏季新品" src="../assets/img/navbar_new.png" alt="">
                         <span data-canclick="true" data-val="夏季新品">夏季新品</span>
                    </li>
                    <li>
                        <img  data-canclick="true" data-val="夹克" src="../assets/img/navbar_jk.png" alt="">
                        <span  data-canclick="true" data-val="夹克">夹克</span>
                    </li>
                    <li>
                        <img data-canclick="true" data-val="衬衫" src="../assets/img/navbar_cs.png" alt="">
                        <span data-canclick="true" data-val="衬衫">衬衫</span>
                    </li>
                    <li>
                        <img data-canclick="true" data-val="牛仔裤" src="../assets/img/navbar_nzk.png" alt="">
                        <span data-canclick="true" data-val="牛仔裤">牛仔裤</span>
                    </li>
                    <li>
                        <img data-canclick="true" data-val="休闲裤" src="../assets/img/navbar_xxk.png" alt="">
                        <span data-canclick="true" data-val="休闲裤">休闲裤</span>
                    </li>
                    <li>
                        <img data-canclick="true" data-val="T恤" src="../assets/img/navbar_ts.png" alt="">
                        <span data-canclick="true" data-val="T恤">T恤</span>
                    </li>
                    <li>
                        <img data-canclick="true" data-val="针织衫" src="../assets/img/navbar_zzs.png" alt="">
                        <span data-canclick="true" data-val="针织衫">针织衫</span>
                    </li>
                    <li>
                        <img data-canclick="true" data-val="卫衣" src="../assets/img/navbar_wy.png" alt="">
                        <span data-canclick="true" data-val="卫衣">卫衣</span>
                    </li>
                    <li>
                        <img data-canclick="true" data-val="西服" src="../assets/img/navbar_xf.png" alt="">
                        <span data-canclick="true" data-val="西服">西服</span>
                    </li>
                </ul>
            </div>
            <div @click="goToSearch" class="searchDiv">
                <img src="../assets/img/icon_search.png" alt="">
                <input disabled class="search" placeholder="请输入搜索内容" type="text">
            </div>
            <!-- mint ui轮播图 -->
            <div class="banner">
                <mt-swipe :auto="3000">
                    <mt-swipe-item v-for="(img,i) of imgs" :key="i">
                        <img height="200px" width="355px" :src="'http://127.0.0.1:3000/img/banner2/'+img.url" alt="">
                    </mt-swipe-item>
                </mt-swipe>
            </div>
                <div class="slideDiv" @click="ToProduct">
                    <ul>
                        <li>
                            <img  data-canclick="true" data-val="夹克" src="../assets/img/slide_jecket.png" alt="">
                            <span  data-canclick="true" data-val="夹克">夹克</span>
                        </li>
                        <li >
                            <img data-canclick="true" data-val="衬衫" src="../assets/img/slide_blouse.png" alt="">
                            <span data-canclick="true" data-val="衬衫">衬衫</span>
                        </li>
                        <li>
                            <img  data-canclick="true" data-val="T恤" src="../assets/img/slide_shirt.png" alt="">
                            <span  data-canclick="true" data-val="T恤">T恤</span>
                        </li>
                        <li >
                            <img data-canclick="true" data-val="卫衣" src="../assets/img/slide_fleece.png" alt="">
                            <span data-canclick="true" data-val="卫衣">卫衣</span>
                        </li>
                        <li>
                            <img  data-canclick="true" data-val="西服" src="../assets/img/slide_tailored.png" alt="">
                            <span  data-canclick="true" data-val="西服">西服</span>
                        </li>
                        <li>
                            <img  data-canclick="true" data-val="衬衫" src="../assets/img/slide_shirt.png" alt="">
                            <span  data-canclick="true" data-val="衬衫">衬衫</span>
                        </li>
                        <li>
                            <img  data-canclick="true" data-val="夹克" src="../assets/img/slide_jecket.png" alt="">
                            <span  data-canclick="true" data-val="夹克">夹克</span>
                        </li>
                        <li >
                            <img data-canclick="true" data-val="衬衫" src="../assets/img/slide_blouse.png" alt="">
                            <span data-canclick="true" data-val="衬衫">衬衫</span>
                        </li>
                        <li>
                            <img  data-canclick="true" data-val="T恤" src="../assets/img/slide_shirt.png" alt="">
                            <span  data-canclick="true" data-val="T恤">T恤</span>
                        </li>
                        <li >
                            <img data-canclick="true" data-val="卫衣" src="../assets/img/slide_fleece.png" alt="">
                            <span data-canclick="true" data-val="卫衣">卫衣</span>
                        </li>
                        <li>
                            <img  data-canclick="true" data-val="西服" src="../assets/img/slide_tailored.png" alt="">
                            <span  data-canclick="true" data-val="西服">西服</span>
                        </li>
                        <li>
                            <img  data-canclick="true" data-val="衬衫" src="../assets/img/slide_shirt.png" alt="">
                            <span  data-canclick="true" data-val="衬衫">衬衫</span>
                        </li>
                    </ul>
                </div>  
            <carousel></carousel>
            <div class="bodyTitle">
                <p>尖货热卖</p>
                <img src="../assets/img/shenlve.png" alt="">
                <div class="body_txt">
                    <p>GOOD</p>
                    <P>SELLING</P>
                </div>
            </div>
            <div class="bodySelling">
                <img v-for="(img,i) of img_url" :key="i" :src="'http://127.0.0.1:3000/img/index/'+img" alt="">
            </div>
            <div class="productBody">
                <p>{{p1.title}}</p>
                <p>{{p1.details}}</p>
                <p>¥<span class="price">{{p1.price}}</span>.00</p>
            </div>
            <div class="bodyImageDiv">
                <div v-for="(p,i) of p2" :key="i">
                    <img :src="'http://127.0.0.1:3000/img/index/'+p.img_url" alt="">
                    <span class="productTitle">{{p.title}}</span>
                    <span class="productPrice">¥{{p.price}}.00</span>
                </div>
            </div>
            <div class="moreBtnDiv" @click="goToSearch">
                <span>更多热卖商品>></span>
            </div>
            <div class="hotSelling">
                <img src="../assets/img/body_test_4.jpg" alt="">
            </div>
            <div class="productF2">
                <div class="productF2Left">
                    <img :src="'http://127.0.0.1:3000/img/index/'+p3[0].img_url" alt="">
                    <span>{{p3[0].title}}</span>
                    <span>¥{{p3[0].price}}.00</span>
                </div>
                <div class="productF2Right">
                    <img :src="'http://127.0.0.1:3000/img/index/'+p4[0].img_url" alt="">
                    <div class="productF2RightDetails">
                        <p>{{p4[0].title}}</p>
                        <p>____</p>
                        <p>¥{{p4[0].price}}.00</p>
                    </div>
                </div>
            </div>
            <div class="bodyImageDiv">
                <div v-for="(p,i) of p2" :key="i">
                    <img :src="'http://127.0.0.1:3000/img/index/'+p.img_url" alt="">
                    <span class="productTitle">{{p.title}}</span>
                    <span class="productPrice">¥{{p.price}}.00</span>
                </div>
            </div>
            <div class="moreBtnDiv" @click="goToSearch">
                <span>更多最新单品>></span>
            </div>
            <div class="footer">
                <div>
                    <img src="../assets/img/footer_icon1.png" alt="">
                    <p>7天无条件退货</p>
                </div>
                <div>
                    <img src="../assets/img/footer_icon2.png" alt="">
                    <p>全场满68元包邮</p>
                </div>
                <div>
                    <img src="../assets/img/footer_icon3.png" alt="">
                    <p>快递上门服务</p>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import { setTimeout } from 'timers';
export default {
    data(){
        return{
            showMask:false,
            MarginR:{right:-220},
            imgs:[],
            list:[],
            p1:{title:""},
            p2:[{title:""}],
            p3:[{title:""}],
            p4:[{title:""}],
            img_url:[]
        }
    },
    methods:{
        ToProduct(e){
            if(e.target.dataset.canclick){
            console.log(e.target.dataset.val)
            let shopclass = e.target.dataset.val
            sessionStorage.setItem("shopclass",shopclass)
            this.$router.push('/Product')
            }
        },
        getImg(){
            this.axios.get('banner2').then(res=>{
                this.imgs = res.data
                // console.log(res.data)
            })
        },
        
        moveNavbbar(){
            this.showMask=true;
            this.MarginR.right=-10+'px'
        },
        hideNavbbar(){
            this.MarginR.right=-220+'px';
            setTimeout(()=>{
                this.showMask=false;
            },300)
        },
        goToSearch(){
            this.$router.go(0)
            sessionStorage.setItem("actived","tab2")
           
        },
        getproduct(){
            this.axios.get("index",).then(res=>{
                console.log(res.data);
                this.p1 =res.data[0];
                console.log(this.p1);
                this.p2 = res.data.slice(1,4);
                console.log(this.p2)
                this.p3 = res.data.slice(4,5)
                console.log(this.p3);
                this.p4 = res.data.slice(5,6)
                console.log(this.p4);
                // console.log(this.p1.img_url.split(','));
                this.img_url = this.p1.img_url.split(",")
                // console.log(this.img_url);
            })
        }
        },
        created(){
            
            this.getproduct();
        },
        mounted(){
            this.getImg();
        }
    }

</script>
<style scoped>
@media screen and (max-width:375px ) {
#app .contain{
    height: 600px;
    position: relative;
    padding: 0 10px;
    box-sizing: border-box;
    overflow-y:auto;
    /* overflow: scroll; */
    margin-bottom:80px;
}
::-webkit-scrollbar  
{  
	display: none!important;
    width: 0px;  
    height: 0px;  
}
#app .titleFixed{
    text-align: left;
    box-sizing: border-box;
    height: 42px;
    line-height: 42px;
}
#app .titleFixed .imgFixed{
    position: fixed;
    width: 40px;
    right: 10px;
    z-index: 10;
}
#app .searchDiv{
    margin-top:5px;
    position: relative;
    cursor: pointer;
}
#app .searchDiv>img{
    position: absolute;
    left:28%;
    top:8px;
    width: 20px;
}
#app .search{
    width: 342px;
    height: 35px;
    background-color: #eee;
    border:0;
    border-radius: 6px;
    outline: none;
    text-align: center;
    z-index: 2;
}
#app .banner{
    margin-top: 20px;
    height: 200px;
}
#app .slideDiv ul{
    list-style: none;
    display: flex;
    height: 78px;
    padding:0 5px; 
    overflow-x:scroll;
    -webkit-overflow-scrolling: touch;
    box-sizing: border-box;
}

#app .slideDiv{
    height: 100px;
    padding-top:15px;
    border:1px solid #fff;
    overflow: hidden;
    box-sizing: border-box;
}
#app .slideDiv ul li+li{
    margin-left:30px;
}
#app .slideDiv ul li img{
    width: 40px;
}
#app .slideDiv ul span{
    display: block;
    font-size: 14px;
}
#app .bodyTitle{
    display: flex;
    align-items: center;
    justify-content: center;
}
#app .bodyTitle p:nth-child(1){
    font-size: 20px;
}
#app .bodyTitle img:nth-child(2){
    align-self: flex-end;
    position: relative;
    bottom:14px;
    left: 5px;
}
#app .bodyTitle .body_txt{
    position: relative;
    left:15px;
}
#app .bodyTitle .body_txt p{
    margin:0;
}
#app .bodyTitle .body_txt p:nth-child(1){
    font-size: 16px;
    font-weight: bold;
}
#app .bodyTitle .body_txt p:nth-child(2){
    font-size: 12px;
    color:#aaa;
}
#app .contain .bodySelling{
    display: flex;
    align-items: center;
    justify-content:space-between;
}
#app .contain .bodySelling img:nth-child(1){
    width: 186px;
    height: 168px;
}
#app .contain .bodySelling img:nth-child(2){
    width: 133px;
    height: 120px;
}
#app .contain .productBody{
    width: 170px;
    text-align: center;
    margin-left:25%;
}
#app .contain .productBody p:nth-child(1){
    font-size: 18px;
}
#app .contain .productBody p:nth-child(2){
    font-size: 14px;
    color:#aaa;
}
#app .contain .productBody p:nth-child(3){
    font-size: 12px;
}
#app .contain .productBody p:nth-child(3) span.price{
    font-size: 20px;
}
#app .contain .bodyImageDiv{
    display: flex;
    justify-content: space-between;
}
#app .contain .bodyImageDiv img{
    width: 101px;
    height: 136px;
}
#app .contain .bodyImageDiv span.productTitle{
    display: block;
    font-size: 14px;
    margin:5px 0;
}
#app .contain .bodyImageDiv span.productPrice{
    display: block;
    font-size: 16px;
    font-weight: bold;
}
#app .contain .bodyImageDiv div:nth-child(2){
    margin-top: 15px;
}
#app .contain .moreBtnDiv{
    height: 64px;
}
#app .contain .moreBtnDiv span{
    text-align: center;
    display: block;
    border-radius: 6px;
    width:166px;
    height: 33px;
    line-height: 33px;
    font-size: 12px;
    background: #000;
    color:#fff;
    margin:25px auto 0;
}
#app .contain .hotSelling{
    width: 339px;
}
#app .contain .hotSelling img{
    width: 339px;
    height: 180px;
}
#app .contain .productF2{
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 15px;
    margin-bottom: 15px;
}
#app .contain .productF2 .productF2Left{
    width: 172px;

}
#app .contain .productF2 .productF2Left img{
    width: 172px;
    height: 209px;
}
#app .contain .productF2 .productF2Left span:nth-child(2){
    font-size:16px; 
}
#app .contain .productF2 .productF2Left span:nth-child(3){
    font-size: 14px;
    font-weight: bold;
    margin-top: 3px;
    margin-left: 5px;
}
#app .contain .productF2 .productF2Right{
    position: relative;
    bottom:10px;
    
}
#app .contain .productF2 .productF2Right img{
    width: 150px;
    height: 172px;
}
#app .contain .productF2 .productF2Right .productF2RightDetails{
    position: absolute;
    width: 120px;
    height: 100px;
    top:40px;
    left:15px;
    background: rgba(250,250,250,.5);
    /* box-shadow:-2px 2px 5px #aaa;
    box-shadow:2px 0px 5px #aaa; */
}
#app .contain .productF2 .productF2Right .productF2RightDetails p:nth-child(1){
    font-size: 14px;
    margin-bottom: 5px;
}
#app .contain .productF2 .productF2Right .productF2RightDetails p:nth-child(2){
    margin-top: 0;
    margin-bottom:10px;
}
#app .contain .productF2 .productF2Right .productF2RightDetails p:nth-child(3){
    font-size: 16px;
    font-weight: bold;
}
#app .contain .footer{
    display: flex;
    justify-content: space-between;
}
#app .contain .footer p{
    font-size: 14px;
    margin-top:3px;
}
#app .contain .indexNavbar{
    width: 187;
    height: 677px;
    position: fixed;
    color: #fff;
    box-shadow: -1px 0px 20px #999;
    top:-10px;
    right: -220px;
    z-index: 5;
    transition: all .5s linear;
}
#app .contain .indexNavbar ul{
    width:187px;
    height: 677px;
    list-style:none;
    text-align: left;
    background: rgba(50,50,50,.8);
    overflow-y: scroll;
    margin:0;
    padding: 0;
    padding-top:15px;
    padding-left:25px;
    padding-right:0;
    padding-right:15px;
    box-sizing: border-box;
}
#app .contain .indexNavbar ul li{
    /* border-bottom:2px solid #000; */
    margin-top:25px;
    font-size: 20px;
    font-family: "楷体";
}
#app .contain .indexNavbar ul li:last-child{
    margin-bottom:20px;
}
#app .contain .indexNavbar ul li img{
    width: 18px;
    margin-right: 10px;
}
#app .contain .mask{
    position: fixed;
    top:-10px;
    left: -10px;
    z-index: 2;
    width: 385px;
    height: 687px;
    background: rgba(35,35,35,.7);
}
}
</style>