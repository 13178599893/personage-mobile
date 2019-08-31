import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Reg from './views/Reg'
import Product from './views/ProductList'
import Left from './views/LeftToRight'
import banner from './components/carousel'
Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:Home},
    {path:"/Left",component:Left},
    {path:"/banner",component:banner},
    // {path:"/Login",component:Login},
    {path:"/Reg",component:Reg},
    {path:"/Product",component:Product},
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    }
  ]
})
