import Vue from 'vue'
import Router from 'vue-router'
import Footer from "./components/footer.vue"
import Destination from "./components/Destination.vue"
import login from "./components/login.vue"
import reg from "./components/reg.vue"
import mine from "./components/mine.vue"
import index from "./components/index.vue"
import add from "./components/add.vue"
import aftermine from "./components/aftermine.vue"
import Dingzhi from "./components/Dingzhi.vue"
import learnMore from './view/learnMore.vue'
import barefeet from './view/barefeet.vue'
import trip from './view/trip.vue'
import teacher from './view/teacher.vue'

Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',component:Footer},
    {path:'/teacher',component:teacher},
    {path:'/trip',component:trip},
    {path:'/barefeet',component:barefeet},
    {path:'/learnMore',component:learnMore},
    {path:'/footer',component:Footer},
    {path:'/login',component:login},
    {path:'/reg',component:reg},
    {path:'/index',component:index},
    {path:'/Destination',component:Destination},
    {path:'/add',component:add},
    {path:'/mine',component:mine},
    {path:'/aftermine',component:aftermine},
    {
      path:'/dingzhi',
      name:'dingzhi',
      component:Dingzhi,
      meta:{title:'dingzhi',keepAlive:true}
    },
  ],
  scrollBehavior (to, from, savedPosition) {
    if (savedPosition) {
      return savedPosition
    } else {
      if (from.meta.keepAlive) {
        from.meta.savedPosition = document.body.scrollTop
      }
      return { x: 0, y: to.meta.savedPosition || 0 }
    }
  }
});

