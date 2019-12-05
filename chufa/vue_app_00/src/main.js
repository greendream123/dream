import Vue from 'vue'
import App from './App.vue'
import router from './router'
import Mint from 'mint-ui';
Vue.use(Mint);
import'mint-ui/lib/style.css'
import { Swipe, SwipeItem } from 'mint-ui';
Vue.config.productionTip = false
//配置swiper
import VueAwesomeSwiper from 'vue-awesome-swiper'
Vue.use(VueAwesomeSwiper)
import './assets/css/swiper.min.css'

import Vant from 'vant';
import 'vant/lib/index.css';
Vue.use(Vant);

import axios from "axios"
//6.配置访问服务器基础路径
axios.defaults.baseURL="http://127.0.0.1:3000/"
//7.保存session信息
//每次访问服务器将session id
//发送服务器验证使用
axios.defaults.withCredentials=true
//8.将axios注册Vue实例中 注意顺序不能配置在vue对象后面
Vue.prototype.axios = axios;
Vue.component(Swipe.name, Swipe);
Vue.component(SwipeItem.name, SwipeItem);
Vue.config.productionTip = false
//5: 设置请求的根路径 
//Vue.http.options.root = "http://127.0.0.1/vue_ser/";
//6:全局设置post 时候表音的数据组织格式为 application/x-www-form-urlencoded
//Vue.http.options.emulateJSON = true;
// 导入 MUI 的样式表， 和 Bootstrap 用法没有差别
import './lib/mui/css/mui.css'
// 导入 MUI 的样式表，扩展图标样式，购物车图标
// 还需要加载图标字体文件
import './lib/mui/css/icons-extra.css'

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
// 关于vue路由跳转之后页面停留在上一个浏览页面位置不会回到顶部问题
router.beforeEach((to,from,next)=>{
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
  window.pageYOffset = 0;
  next()
})