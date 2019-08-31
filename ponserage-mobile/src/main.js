import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Mintui from 'mint-ui'
import {Swipe,SwipeItem} from 'mint-ui'
import Carousel from './components/carousel'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css';
import { NumberKeyboard } from 'vant';
import axios from 'axios'
import 'vant/lib/index.css';
Vue.use(NumberKeyboard);
Vue.use(ElementUI);
Vue.prototype.axios=axios;
axios.defaults.baseURL="http://127.0.0.1:3000/"



Vue.component("carousel",Carousel)
Vue.component(Swipe.name,Swipe)
Vue.component(SwipeItem.name,SwipeItem)
import 'mint-ui/lib/style.css'
Vue.use(Mintui)
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
