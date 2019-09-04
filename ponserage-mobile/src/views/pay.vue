<template>
    <div>
        <div class="payTitle">
            <img @click="back" src="../assets/img/back_left.png" alt="">
            <span>给钱</span>
        </div>
        <div>
            <img width="375px" src="../assets/img/pay.jpg" alt="">
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{

        }
    },
    methods:{
        back(){
            window.history.back(-1)
        }
    }
}
</script>
<style scoped>
#app .payTitle{
    display: flex;
    align-items: center;
    padding-bottom:5px;
    border-bottom:1px solid #aaa;
}
#app .payTitle img{
    width: 30px;
    height: 30px;
    margin-left:10px; 
}
#app .payTitle span{
    margin: auto;
    font-size: 20px;
}
</style>