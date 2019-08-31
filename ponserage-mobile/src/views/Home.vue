<template>
    <div>
        <div>
            <!-- 首页面板 -->
            <div v-if="foused=='tab1'">
                <lyl-index></lyl-index>
            </div>
            <!-- 分类面板 -->
            <div v-else-if="foused=='tab2'">
                <lyl-class></lyl-class>
            </div>
            <!-- 购物车面板 -->
            <div v-else-if="foused=='tab3'">
                <lyl-cart></lyl-cart>
            </div>
            <!-- 个人信息面板 -->
            <div v-else>
                <lyl-login v-show="uid==null"></lyl-login>
                <lyl-personal v-show="uid!=null"></lyl-personal>
            </div>
        </div>
        <!-- 底部导航栏 -->
        <mt-tabbar  v-model="foused" fixed>
            <mt-tab-item id="tab1">
                <img slot="icon"  :src="foused=='tab1'?require('../assets/img/tabbar_home_select.png'):require('../assets/img/tabbar_home.png')" alt="">
                首页
            </mt-tab-item>
            <mt-tab-item id="tab2">
                <img slot="icon"  :src="foused=='tab2'?require('../assets/img/tabbar_class_select.png'):require('../assets/img/tabbat_class.png')" alt="">
                分类
            </mt-tab-item>
            <mt-tab-item id="tab3">
                <img slot="icon"  :src="foused=='tab3'?require('../assets/img/tabbar_cart_select.png'):require('../assets/img/tabbar_cart.png')" alt="">
                购物车
            </mt-tab-item>
            <mt-tab-item id="tab4">
                <img slot="icon" :src="foused=='tab4'?require('../assets/img/tabbar_my_select.png'):require('../assets/img/tabbar_my.png')" alt="">
                我的
            </mt-tab-item>

        </mt-tabbar>
        
    </div>
</template>
<script>
import Index from './Index'
import Classification from './Classification'
import Cart from './Cart'
import Personal from './Personal'
import Login from './Login'
import bus from '../bus'
export default {
      data(){
          return{
              foused:"tab1",
              uid:null,
              actived:"",
              test:"",
              list:[]
              
          }
      },
      components:{
          "lyl-index":Index,
          "lyl-class":Classification,
          "lyl-cart":Cart,
          "lyl-personal":Personal,
          "lyl-login":Login
      },
      methods:{
          getMyactive(){
            //   1
            //   let self = this;
            // bus.$on("myActive",((data)=>{
            //         self.actived=data
            //          console.log(self);
            //   console.log(self.actived);
            // }))
            // console.log(this.$route.query.actived)
            // 2
            // if(this.$route.query.actived) {
            //     this.actived = this.$route.query.actived;
            //     console.log(this.$route.query.actived)
            // }
            // 3
            let tmp = sessionStorage.getItem('actived')
            if(tmp){
                this.actived = tmp;
            } 
          },
          selectUid(){
             this.uid = sessionStorage.getItem("uid")
             console.log(this.uid);
          }
      },
      created(){
            this.selectUid()
      },
      mounted(){
          this.getMyactive()
          
      },
      watch:{
         actived() {
             this.foused = this.actived;
         }
      }
}
</script>
<style scoped>
@media screen and (max-width: 375px) {
.mint-tabbar{
     z-index: 20 !important;
}
.mint-tabbar > .mint-tab-item{
    color:#aaa;
}
.mint-tabbar > .mint-tab-item.is-selected{
    color:#000;
}

}
</style>