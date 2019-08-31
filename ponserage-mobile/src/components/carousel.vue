<template>
    <div>
        <!-- <h1>轮播图</h1> -->
        <div id="carousel">
            <span class="btn-left" :disabled="canClick" @click="move(-1)"><img src="../assets/img/btn_left.png" alt=""></span>
            <ul :style="Position" :class="{'hasTrans':showTrans}">
                <li v-for="(img,i) of imgs" :key="i">
                    <img :src="'http://127.0.0.1:3000/img/banner1/'+img.url" alt="">
                </li>
                <li>
                    <img :src="'http://127.0.0.1:3000/img/banner1/'+imgs[0].url" alt="">
                </li>
            </ul>
            <span class="btn-right" @click="move(1)"><img src="../assets/img/btn_right.png" alt=""></span>
        </div>
    </div>
</template>
<script>
import { setTimeout } from 'timers';
export default {
    data(){
        return{
            i:0,
            imgs:[{url:""}],
            showTrans:true,
            moveWidth:'355',
            canClick:true
        }
    },
    methods:{
        getImg(){
            this.axios.get('banner').then(res=>{
                this.imgs = res.data
                console.log(res.data)
            })
        },
        move(i){
            if(this.canClick){
                this.canClick=false;
                if(i==-1&&this.i==0){
                    this.showTrans=false;
                    setTimeout(()=>{
                        this.i=this.imgs.length
                        setTimeout(()=>{
                            this.showTrans=true;
                            this.i+=i;
                            setTimeout(()=>{
                                this.canClick=true
                            },200)
                        },50)
                    },50)
                }else if(i==1&&this.i==this.imgs.length-1){
                    this.i+=i;
                    setTimeout(()=>{
                        this.showTrans=false;
                        setTimeout(()=>{
                            this.i=0;
                            setTimeout(()=>{
                                this.showTrans=true;
                                setTimeout(()=>{
                                    this.canClick=true
                                })
                            },50)
                        },50)
                    },500)
                }else{
                    this.i+=i;
                    setTimeout(()=>{
                        this.canClick=true
                    },1000)
                }
            // this.i+=i
            // this.canclick=false
            // setTimeout(()=>{
            //     this.canClick=true
            // },600)
            }
        }
    },
    created(){
        this.getImg()
    },
    computed:{
        Position(){
            var marginLeft=-this.i*this.moveWidth+'px'
            return {marginLeft}
        }
    }
}
</script>
<style scoped>
@media screen and (max-width:375px){
#carousel{
    position: relative;
    height: 200px;
    width: 355px;
    overflow: hidden;
}
#carousel span{
    position: absolute;
    z-index: 1;
}
#carousel span.btn-left{
    left:0px;
    top:45%;
    cursor: pointer;
}
#carousel span.btn-right{
    right:0px;
    top:45%;
    cursor: pointer;
}
#carousel span img{
    width: 30px;
}
#carousel ul.hasTrans{
    transition: all .5s linear;
}
#carousel ul{
    position: relative;
    /* background: #000; */
    width: 1420px;
    height: 200px;
    display: flex;
    padding: 0;
    list-style: none;
}
#carousel ul li{
    width: 355px;
    height: 200px;
}
#app #carousel ul li img{
    width: 355px;
    height: 200px;

}
}
</style>