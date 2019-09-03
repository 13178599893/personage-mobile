<template>
    <div>
    <div class="contain">
        <div class="productHeader">
            <img @click="back" src="../assets/img/back_left.png" alt="">
            <span>{{mytitle}}</span>
        </div>
        <div class="productList">
            <div class="productItem" v-for="(p,i) of list" :key="i">
                <img width="355px" :src="'http://127.0.0.1:3000/img/product/'+p.img_url" alt="">
                <div class="productTxt">
                    <span>{{p.title}}</span>
                    <span>{{p.details}}</span>
                    <span>¥{{p.price}}.00</span>
                    <span @click="showDetails" :data-id=p.id >立即抢购</span>
                </div>
            </div>
        </div>
    </div>
        <div class="myMask" @click="hideDetails" v-show="showdetails">
            <!-- 遮罩 -->
        </div>
        <div class="myDetails" :style="myPosition">
             <lyl-details :pid=pid></lyl-details>
        </div>
    </div>
</template>
<script>
import Details from './Details'
export default {
    data(){
        return{
            list:[],
            showdetails:false,
            myPosition:{top:"720px"},
            mytitle:"",
            pid:""
        }
    },
    methods:{
        showDetails(e){
            this.showdetails=true;
            this.myPosition.top=125+"px"
            this.pid = e.target.dataset.id
        },
        hideDetails(){
             this.showdetails=false;
             this.myPosition.top=720+"px"
        },
        back(){
            sessionStorage.setItem("actived","tab2")
            this.$router.push('/')
        },
        getproductlist(){
            this.mytitle = sessionStorage.getItem("shopclass");
            let pname = sessionStorage.getItem("shopclass");
            this.axios.get("product",{params:{
                pname
            }}).then(res=>{
                console.log(res.data);
                this.list = res.data
            })
        }
    },
    created(){
        this.getproductlist();
    },
    components:{
        "lyl-details":Details
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
    padding:0 10px;
    width: 375px;
    border:0;
    box-sizing: border-box;
    /* overflow-x:hidden;  */
}
#app .productHeader{
    display: flex;
    align-items: center;
    padding-bottom: 5px;
    border-bottom: 1px solid #ddd;
}
#app .productHeader img{
    width: 20px;
    height: 20px;
  
}
#app .productHeader span{
    font-size: 25px;
    font-family: 'Courier New', Courier, monospace;
    font-weight: bolder;
    margin-left: 15px;
}
#app .productList{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    height: 600px;
    overflow: scroll;

}
#app .productList img{
    /* width: 160px; */
    height: 16 0px;
    border-radius: 12px;
}
#app .productList span{
    display: block;
    margin-top: 3px;
    font-family: 'Courier New', Courier, monospace;
}
#app .productList .productItem{
    position: relative;
    border-radius: 8px;
    box-sizing: border-box;
    margin-top: 20px;
    box-shadow: 2px 2px 10px #aaa;
}
#app .productList .productTxt{
    padding: 0 5px 5px;
    display: flex;
    flex-flow: column;
    align-items: flex-start;
}
#app .productList span:nth-child(1){
    font-size: 18px;
    color: #000;
    font-weight: bold;
}
#app .productList span:nth-child(2){
    font-size: 14px;
}
#app .productList span:nth-child(3){
    font-size: 16px;
    color: #f00;
}
#app .productList span:nth-child(4){
    position: absolute;
    bottom:5px;
    right:5px;
    font-size: 12px;
    width: 60px;
    background: rgb(253, 114, 0);
    padding:3px;
    color:#fff;
    border-radius: 6px;
}
/*详情在这里*/
.myDetails{
    position: absolute;
    top:720px;
    width: 375px;
    left: -10px;
    transition: all .5s linear;
}
.myMask{
    position: absolute;
    top:0;
    left:0;
    width: 375px;
    height: 677px;
    background: rgba(0,0,0,.7);
}
}
</style>