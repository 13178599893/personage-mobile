<template>
  <div class="contain">
    <!-- <h1>购物车</h1> -->
    <div class="cartTitle">
      <span>购物车</span>
    </div>
    <div class="empCart" v-show="list.length==0">
      <img src="../assets/img/emp_cart.png" alt />
      <p>空空如也~</p>
      <p>快去买买买享受购物的快感吧</p>
      <button @click="goHome">去逛逛</button>
    </div>
    <div class="cart-wrapper" v-show="list.length!=0">
      <div class="cartItem" v-for="(item,i) of list" :key="i">
        <div>
          <input type="checkbox" :checked="item.cb" @click="changeCb($event,i)" />
        </div>
        <div>
          <img class="cartImg" :src="'http://127.0.0.1:5050/img/product/'+item.img_url" alt />
        </div>
        <div class="txt">
          <span class="cartItemTitle">{{item.title}}</span>
          <span class="cartDetail">{{item.details}}</span>
          <span class="cartItemPrice">¥{{item.price}}.00</span>
        </div>
        <div class="cartRight">
          <div class="cartBtn">
            <span class="minus" @touchstart="changecount(i,-1)">-</span>
            <span class="shopCount" v-text="item.count"></span>
            <span class="add" @touchstart="changecount(i,1)">+</span>
          </div>
          <div class="subtotal">
            <span>小计:</span>
            <span class="subPrice" v-text="'¥'+item.calculate+'.00'"></span>
          </div>
        </div>
        <div class="cartDel" @click="del(i)">
          <img src="../assets/img/cart_del.png" alt />
        </div>
      </div>
    </div>
    <div class="settle" v-show="list.length>0">
      <label>
        <input @click="Allcb" v-model="cbAll" type="checkbox" />全选
      </label>
      <span>合计:</span>
      <span v-text="'¥'+total+'.00'"></span>
      <span @click="pay">提交订单</span>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      list: [],
      // {name:"1"},{name:"1"},{name:"1"},{name:"1"},{name:"1"}
      cbAll: false,
      count:"",
      total: 0
    };
  },
  methods: {
     pay(){
            if(this.total==0){
              this.$toast({
                message:"请选择要购买的商品",
                position:"bottom"
              })
            }else{
              this.$router.push("/pay")
            }
        },
    del(i) {
      this.$messagebox.confirm(`是否删除${this.list[i].title}商品`).then(action=>{
        let uid = sessionStorage.getItem("uid");
        let id = this.list[i].id;
        this.axios
          .get("delshop", {
            params: {
              uid,
              id
            }
          })
          .then(res => {
            console.log(res);
            // this.selectshop();
            this.list.splice(i,1)
            this.calctotal();
          });
      }).catch(err=>{
        console.log(err)
      })
    },
    // sub(i){
    //     let uid = sessionStorage.getItem("uid")
    //     let pid = this.list[i].id
    //     console.log(pid);
    //     if(this.list[i].count>1){
    //         this.axios.get('subcount',{params:{
    //             uid,pid
    //         }}).then(res=>{
    //             console.log(res);
    //             this.selectshop()
    //         })
    //     }
    // },
    changecount(i, sum) {
      // console.log()
      let list = this.list;
      if ((list[i].count > 1 && sum == -1) || sum == 1) {
        // console.log(sum);
        list[i].count += sum;
      this.list[i].calculate = this.list[i].count*this.list[i].price
      this.calctotal()
        // console.log(list[i]);
        // console.log( this.list[i].mycount);
        setTimeout(()=>{
            let uid = sessionStorage.getItem("uid")
            let pid = this.list[i].id
            let count=this.list[i].count
            console.log(pid);
            this.axios.get('addcount',{params:{
                    uid,pid,count
            }}).then(res=>{
                    // console.log(res);
                    this.selectcount(pid,i)
                    this.list[i].calculate = this.list[i].count*this.list[i].price
            })
        },2000)
      }
    },
    selectcount(pid,i){
          let uid = sessionStorage.getItem("uid")     
        this.axios.get('selectcount',{params:{
                    uid,pid
            }}).then(res=>{
                    // console.log(res.data[0].count );
                    // console.log(this.list[i])
                    // let list = this.list;
                    //     this.list[i].count=res.data[0].count
                    //     setTimeout(()=>{
                    //         for (var item of this.list) {
                    //             // 计算小计
                    //             item.calculate = item.count * item.price;
                    // // item.mycount = item.count;
                    //              }
                    //     },50)
            })
    },
    calctotal(){
      this.total = 0;
      this.list.forEach((item,index)=>{
        if(item.cb){
          this.total += item.calculate
        }
      })
    },
    selectshop() {
      var uid = sessionStorage.getItem("uid");
      this.axios
        .get("getcart", {
          params: {
            uid
          }
        })
        .then(res => {
          console.log(res);
          this.list = res.data;
          let list = this.list;
          for (var item of list) {
            // 计算小计
            item.calculate = item.count * item.price;
            // item.mycount = item.count;
          }
          this.cbAll = false;
          this.total = 0;
        });
    },
    // 去逛逛
    goHome() {
      this.$router.go();
      sessionStorage.setItem("actived", "tab1");
    },
    handleChange(value) {
      // console.log(value);
    },
      // 重置选中状态
    initcb() {
      for (let i = 0; i < this.list.length; i++) {
        this.list[i].cb = false;
      }
    },
    // addcount(){
    //     for(let item of this.list){
    //         console.log(item.mycount)
    //     }
    // },
    // 复选框
    changeCb(e, i) {
    
        this.list[i].cb = !this.list[i].cb
      //  this.total=0;
      // 计算总额
      if (this.list[i].cb) {
        this.total += this.list[i].calculate;
      } else {
        this.total -= this.list[i].calculate;
      }
      // console.log(this.list[i].cb);
      console.log(1);
      // let tem = true;
      for (let i = 0; i < this.list.length; i++) {
        if (this.list[i].cb == false) {
          return (this.cbAll = false);
        } else {
          continue;
        }
        console.log(this.list[i].cb);
      }
      this.cbAll = this.list[i].cb;
    },
    // 全选
    Allcb() {
        this.cbAll = !this.cbAll
      for (let i = 0; i < this.list.length; i++) {
        this.list[i].cb = this.cbAll;
        if (this.cbAll) {
          // 全选总额变化
          this.total += this.list[i].calculate;
        } else {
          this.total = 0;
        }
      }
    }
  },
  created() {
    this.selectshop();
    setTimeout(() => {
        // this.addcount();
      this.initcb();
    }, 500);
        this.selectcount()
  },
  mounted() {},
  updated() {},
  computed: {
    calculate(){
        for (var i=0;i<this.list.length;i++) {
            // 计算小计
            console.log(this.list);
            console.log(this.list[i]);
            // console.log(this.list[i].calculate);
            return this.list[i].calculate= this.list[i].count * this.list[i].price;
            
              }
    }
  },
 
  watch: {}
};
</script>
<style scoped>
@media screen and (max-width: 375px) {
  ::-webkit-scrollbar {
    display: none !important;
    width: 0px;
    height: 0px;
  }

  #app .contain .cartTitle {
    padding-bottom: 5px;
    border-bottom: 1px solid #ddd;
    font-size: 20px;
  }
  #app .contain .empCart {
    margin-top: 50px;
  }
  #app .contain .empCart img {
    width: 40px;
  }
  #app .contain .empCart p:nth-child(3) {
    color: #aaa;
  }
  #app .contain .empCart button {
    width: 120px;
    height: 40px;
    border-radius: 8px;
    background: transparent;
    outline: none;
    border: 1px solid rgb(245, 103, 21);
    color: rgb(245, 103, 21);
    text-rendering: none;
  }
  #app .contain .cart-wrapper {
    height: 520px;
    overflow-y: scroll;
  }
  #app .contain .cart-wrapper .cartItem {
    background: #eee;
    box-sizing: border-box;
    align-items: center;
    display: flex;
    padding: 10px 0 10px 10px;
  }
  #app .contain .cart-wrapper .cartItem .cartImg {
    width: 60px;
    height: 60px;
    border-radius: 50%;
    margin-left: 10px;
  }
  #app .contain .cart-wrapper .cartItem .txt {
    margin-left: 10px;
    width: 140px;
    text-align: left;
  }
  #app .contain .cart-wrapper .cartItem .cartItemTitle {
    display: block;
    font-family: "Courier New", Courier, monospace;
    font-size: 16px;
  }
  #app .contain .cart-wrapper .cartItem .cartDetail {
    display: block;
    font-size: 12px;
  }
  #app .contain .cart-wrapper .cartItem .cartItemPrice {
    display: block;
    font-size: 14px;
    font-weight: bold;
    color: rgb(252, 15, 15);
  }
  #app .contain .cart-wrapper .cartItem .cartRight {
    position: relative;
    left: 10px;
    top: 10px;
  }

  #app .contain .cart-wrapper .cartItem .cartBtn {
    display: flex;
    margin-left: 10px;
  }
  #app .contain .cart-wrapper .cartItem .subtotal {
    text-align: left;
    padding-left: 10px;
  }
  #app .contain .cart-wrapper .cartItem .subtotal span:nth-child(1) {
    font-size: 12px;
  }
  #app .contain .cart-wrapper .cartItem .subPrice {
    color: #f00;
    font-size: 12px;
  }
  #app .contain .cart-wrapper .cartItem .cartBtn .add {
    display: block;
    width: 20px;
    color: #fff;
    background: #aaa;
    padding: 2px;
    border-radius: 4px;
  }
  #app .contain .cart-wrapper .cartItem .cartBtn .shopCount {
    display: block;
    box-sizing: border-box;
    line-height: 22px;
    width: 40px;
  }
  #app .contain .cart-wrapper .cartItem .cartBtn .minus {
    display: block;
    width: 20px;
    color: #fff;
    background: #aaa;
    padding: 2px;
    border-radius: 4px;
  }

  #app .contain .cart-wrapper .cartItem .cartDel {
    /* margin-left: 13px; */
    position: relative;
    right: 15px;
    top: -35px;
    width: 25px;
  }
  #app .contain .cart-wrapper .cartItem .cartDel img {
    width: 25px;
  }
  #app .contain .cart-wrapper .cartItem + .cartItem {
    margin-top: 1px;
  }
  #app .contain .settle {
    display: flex;
    align-items: center;
    position: fixed;
    width: 375px;
    height: 50px;
    bottom: 55px;
    background: #eee;
    padding-left: 12px;
  }
  #app .contain .settle span:nth-child(2) {
    margin-left: 80px;
  }
  #app .contain .settle span:nth-child(3) {
    margin-left: 10px;
    color: #f00;
    text-align: left;
    width: 80px;
  }
  #app .contain .settle span:nth-child(4) {
    display: block;
    background: #f44;
    height: 50px;
    line-height: 50px;
    width: 110px;
    color: #fff;
  }
}
</style>