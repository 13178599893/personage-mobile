<template>
  <div class="contain">
    <!-- <h1>分类</h1> -->
    <div class="classTitle">
      <!-- <img class="back" src="../assets/img/back_left.png" alt=""> -->
      <img class="searchImg" src="../assets/img/icon_search.png" alt />
      <input class="classSearch" v-model="searchmsg" type="text" placeholder="请输入您想要搜索的商品名称" />
      <span class="searchTxt" @click="searchshop">搜索</span>
      <img class="classGologin" @click="goTab4" src="../assets/img/tabbar_my.png" alt />
    </div>
    <div class="classBody">
      <!-- 左侧菜单 -->
      <div class="left-menu">
        <div class="classMenu" ref="left">
          <ul>
            <li
              class="left-item"
              :class="{current: currentIndex === index}"
              v-for="(item,index) of menu"
              :key="index"
              @click="selectItem(index,$event)"
            >
              <span>{{item}}</span>
            </li>
          </ul>
        </div>
      </div>
      <!-- 右侧 -->
      <div ref="right" class="MenuItem right-menu right">
        <ul class="menuItem-wapper">
          <li class="right-item right-item-hook" v-for="(menu,i) in title" :key="i">
            <div class="MenuItemTitle">
              <span>{{menu}}</span>
              <div :data-val="menu" @touchstart="goToProduct">查看更多>></div>
            </div>
            <ul class="item-wapper">
              <li v-for="(p,i) of shoplist" v-show="p.productclass==menu" :key="i">
                <img :data-val="p.productclass" @touchstart="goToProduct" :src="'http://127.0.0.1:5050/img/product/'+p.img_url" />
                <span>¥{{p.price}}.00</span>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
    <!-- <div class="myproduct" v-show="list.length>0">
        <lyl-product></lyl-product>
    </div>-->
  </div>
</template>
<script>
import BScroll from "better-scroll";
export default {
  data() {
    return {
      list: [],
      shoplist: [],
      searchmsg: "",
      menu: ["polo","夏季新品","夹克","衬衫","牛仔裤","休闲裤","T恤","针织衫","卫衣","西服"],
      title: ["polo","夏季新品","夹克","衬衫","牛仔裤","休闲裤","T恤","针织衫","卫衣","西服"],
      scrollY: 0,
      //   rightHeight: [],
      clickEvent: false,
      listHeight: [],
      isRefresh: false,
    };
  },
  components: {},
  methods: {
    getshoplist() {
      this.axios.get("shopclass").then(res => {
        console.log(res);
        this.shoplist = res.data;
        this.p1 = this.shoplist.slice(0, 2);
      });
    },
    searchshop() {
      let shopclass = this.searchmsg;
      if (this.searchmsg != "") {
        sessionStorage.setItem("shopclass", shopclass);
        this.$router.push("/Product");
      }
    },
    goTab4(){
        sessionStorage.setItem("actived","tab4")
        this.$router.go()
    },
    //跳转商品页
    goToProduct(e) {
      // console.log(1)
      let shopclass = e.target.dataset.val;
      sessionStorage.setItem("shopclass", shopclass);
      this.$router.push("/Product");
    },
    _initScroll() {
      this.lefts = new BScroll(this.$refs.left, {
        click: true
      });
      // console.log(this.lefts);
      this.rights = new BScroll(this.$refs.right, {
        probeType: 3
      });
      // console.log(this.rights);
      this.rights.on("scroll", pos => {
        this.scrollY = Math.abs(Math.round(pos.y));
        // console.log(this.scrollY);
      });
      // 下拉开始
      //   this.rights.on("touchStart", pos => {
      //     // 下拉动作
      //     if (pos.y > 1) {
      //       // this.$emit("pulldown", 1);
      //       this.isRefresh = true;
      //     }
      //     // setTimeout(() => {
      //     //   this.rights.finishPullUp();
      //     //   this.rights.refresh();
      //     //   this.isRefresh = false
      //     // }, 1000);
      //   });
      // 顶部下拉事件，用于下拉刷新
      // if (this.pulldown) {
      //   this.rights.on("touchEnd", pos => {
      //     // 下拉动作
      //     if (pos.y > 1) {
      //       // this.$emit("pulldown", 1);
      //       this.isRefresh = true;
      //     }
      //     setTimeout(() => {
      //       this.rights.finishPullUp();
      //       this.rights.refresh();
      //       this.isRefresh = false;
      //     }, 2000);
      //   });
      // }
    },
    _getHeight() {
      let rightItems = this.$refs.right.getElementsByClassName(
        "right-item-hook"
      );
      // console.log(rightItems)
      //   console.log(this.$refs.right);
      for (var item of rightItems) {
        console.log(item.clientHeight);
      }
      let height = 0;
      this.listHeight.push(height);
      for (let i = 0; i < rightItems.length; i++) {
        let item = rightItems[i];
        height += item.clientHeight;
        // height += 118;
        this.listHeight.push(height);
      }
      console.log(this.listHeight);
    },
    selectItem(index, event) {
      this.clickEvent = true;
      // console.log(1)
      if (!event._constructed) {
        return;
      } else {
        let rightItems = this.$refs.right.getElementsByClassName(
          "right-item-hook"
        );
        // console.log(rightItems);
        let el = rightItems[index];
        // console.log(el);
        this.rights.scrollToElement(el, 300);
      }
    }
  },
  watch: {
    list() {
      // this._getHeight()
    }
  },
  mounted() {
    // this.$nextTick(() => {
    setTimeout(() => {
      this._initScroll();
      this._getHeight();
    }, 1000);
    // });
  },
  created() {
    // this._getHeight();
    this.getshoplist();
  },
  computed: {
    currentIndex() {
      for (let i = 0; i < this.listHeight.length; i++) {
        let height = this.listHeight[i];
        // console.log("这里是高1:"+height)
        let height2 = this.listHeight[i + 1];
        //  console.log("这里是高2:"+height2)
        if (!height2 || (this.scrollY >= height && this.scrollY < height2)) {
          // if (this.clickEvent) {
          //   return i + 1;
          // } else {
          return i;
          // }
        }
        // console.log('这里是下标'+i)
      }
      return 0;
    }
  }
};
</script>
<style scoped>
@media screen and (max-width: 375px) {
  body {
    /* margin-left: 0 !important; */
  }
  ul {
    list-style: none;
    margin: 0;
    padding: 0;
  }
  ::-webkit-scrollbar {
    display: none !important;
    width: 0px;
    height: 0px;
  }
  #app .contain {
    padding: 0px 0px 0;
  }
  #app .classTitle {
    position: relative;
    z-index: 3;
    display: flex;
    top: -10px;
    justify-content: space-around;
    align-items: center;
    padding: 20px 8px 10px;
    background: #fff;
    border-bottom: 1px solid #eee;
  }
  #app .classTitle img {
    width: 20px;
    height: 20px;
  }
  #app .classTitle img.searchImg {
    position: absolute;
    left: 30px;
    width: 18px;
    height: 18px;
  }
  #app .classTitle img.classGologin{
    margin-right: 10px;
  }
  #app .classTitle .searchTxt {
    background: #eee;
    padding: 3px 0 3px 1px;
    border-left: 1px solid #aaa;
    width: 40px;
    position: relative;
    left: -45px;
    font-size: 12px;
  }
  #app .classTitle .classSearch {
    width: 300px;
    height: 30px;
    border-radius: 14px;
    background: #eee;
    border: 0;
    box-sizing: border-box;
    outline: none;
    padding-left: 35px;
    margin-left: 10px;
  }
  #app .contain .classBody {
    display: flex;
  }
  #app .contain .classBody .classMenu {
    display: flex;
    height: 100%;
    overflow: hidden;
    background: #eee;
    z-index: 2;
    top: 0px;
  }
  #app .contain .classBody .classMenu ul {
    margin: 0;

    height: 100%;
    list-style: none;
    font-family: Georgia, "Times New Roman", Times, serif;
  }
  #app .contain .classBody .classMenu ul li {
    width: 92px;
    height: 49px;
    line-height: 49px;
  }
  #app .contain .classBody .classMenu ul li span {
    display: block;
    width: 100%;
    height: 100%;
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: center;
    border-bottom: 1px solid #aaa;
  }
  #app .contain .classBody .MenuItem {
    width: 100%;
    height: 530px;
    overflow: hidden;
    position: relative;
  }
  #app .contain .classBody .MenuItem ul.menuItem-wapper {
    margin: 0;
    box-sizing: border-box;
    padding-right: 10px;
  }
  /* #app .contain .classBody .MenuItem ul.menuItem-wapper>li{
    display: flex;
} */
  #app .contain .classBody .MenuItem ul.menuItem-wapper > li > ul.item-wapper {
    display: flex;
    flex-wrap: wrap;
    justify-content:flex-start;
    padding-bottom: 10px;
    border-bottom: 1px solid #eee;
  }
  #app .contain .classBody .MenuItem ul.menuItem-wapper> li> ul.item-wapper li {
    margin-top:15px;
    /* margin-left: 10px; */
    width: 33%;
    overflow: hidden;

  }
  #app .contain .classBody .MenuItem ul.menuItem-wapper> li > ul.item-wapper img {
    width: 60px;
    height: 60px;
    border-radius: 50%;
    overflow: hidden;
  }
  .current {
    background: #fff;
  }
  #app .contain .classBody .MenuItem ul.menuItem-wapper > li > ul span {
    display: block;
    font-size: 12px;
  }
  #app .contain .classBody .MenuItem ul.menuItem-wapper .MenuItemTitle {
    display: flex;
    justify-content: space-between;
    font-size: 14px;
    margin-top: 5px;
  }
  #app .contain .classBody .MenuItem ul.menuItem-wapper .MenuItemTitle span:nth-child(1) {
    margin-left: 15px;
  }
  /* #app .myproduct{
      height: 545px;
      overflow: scroll;
  } */
  /* #app .detailFooter{
      position: fixed !important;
      bottom:50px;
  } */
  #app .contain .classBody .MenuItem ul.menuItem-wapper .MenuItemTitle span:nth-child(2) {
    color: #aaa;
  }
  @keyframes run {
    0% {
      left: -10%;
    }
    100% {
      left: 120%;
    }
  }
}
</style>