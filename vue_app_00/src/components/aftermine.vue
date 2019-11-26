<template>
  <div id="container">
    <mt-tab-container class="page-tabbar-tab-container" v-model="active" swipeable>
        <mt-tab-container-item id="jingxuan">
        	<index></index>
        </mt-tab-container-item>
        <mt-tab-container-item id="target">
        	<destination></destination>
        </mt-tab-container-item>
        <mt-tab-container-item id="dingzhi">
        	<dingzhi></dingzhi>
        </mt-tab-container-item>
        <mt-tab-container-item id="add">
        	<add></add>
        </mt-tab-container-item>
        </mt-tab-container>
    <!--顶部导航栏-->
    <div class="head">
      <div class="left" style="width:68px;height:40px">
        <img src="../assets/mine.png">
      </div>
      <div class="center" style="width:68px;height:40px">
        <span class="mine">我的</span>
        <span class="tongbu">已同步</span>
      </div>
      <div class="right" style="width:68px;height:40px">
        <img class="xinfeng" src="../assets/xinfeng.png">
      </div>
    </div>
    <table></table>
    <div id="login">
      <div class="tx">
        <img class="touxiang" src="../assets/touxiang.png">
      </div>
      <div class="wz">
        <div class="nicheng">
          <span>故是</span>
        </div>
        <div class="liebiao">
          <div class="l1">
            <img src="../assets/cqg1.png" alt="">
            <span>旅行基金</span>
          </div>
          <div class="l2">
            <img src="../assets/haoyou1.png" alt="">
            <span>好友</span>
          </div>
          <div class="l3">
            <img src="../assets/dingdan1.png" alt="">
            <span>定制订单</span>
          </div>
        </div>
      </div>
    </div>
  
    <mt-navbar v-model="selected">
      <mt-tab-item id="1">行程</mt-tab-item>
      <mt-tab-item id="2">印象</mt-tab-item>
      <mt-tab-item id="3">收藏</mt-tab-item>
    </mt-navbar>

    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="1">
        <img class="img_xc" src="../assets/xingcheng.jpg" alt="">
      </mt-tab-container-item>
      <mt-tab-container-item id="2">
        <div id="d1">
          <img src="../assets/yinxiang.png" alt="">
          <span>暂无印象</span>
        </div>
      </mt-tab-container-item>
      <mt-tab-container-item id="3">
        <div id="d2">
          <img src="../assets/shoucang.png" alt="">
          <span>暂无收藏</span>
        </div>
      </mt-tab-container-item>
    </mt-tab-container>
    <mt-tabbar fixed v-model="active">
            <mt-tab-item id="jingxuan" @click.native="changeState(0)">
                <tabbaricon :normalImage="require('../assets/jingxuan1.png')" 
                :selectedImage="require('../assets/jingxuan.png')" :focused="currentIndex[0].isSelect">
                </tabbaricon>
                <span >精选</span>
            </mt-tab-item>
            <mt-tab-item  id="target" @click.native="changeState(1)">
                <tabbaricon :normalImage="require('../assets/target1.png')" 
                :selectedImage="require('../assets/target.png')" :focused="currentIndex[1].isSelect">
                </tabbaricon>
                <span>目的地</span>
            </mt-tab-item>
            <mt-tab-item id="add" @click.native="changeState(2)">
                <tabbaricon :normalImage="require('../assets/add1.png')" 
                :selectedImage="require('../assets/add.png')" :focused="currentIndex[2].isSelect">
                </tabbaricon>
                关注
            </mt-tab-item>
            <mt-tab-item id="dingzhi" @click.native="changeState(3)">
                <tabbaricon :normalImage="require('../assets/dingzhi1.png')" 
                :selectedImage="require('../assets/dingzhi.png')" :focused="currentIndex[3].isSelect">
                </tabbaricon>
                <span>定制</span>
            </mt-tab-item>
            <mt-tab-item id="my" @click.native="changeState(4)">
                <tabbaricon :normalImage="require('../assets/my1.png')" 
                :selectedImage="require('../assets/my.png')" :focused="currentIndex[4].isSelect">
                </tabbaricon>
                <span>我的</span>
            </mt-tab-item>
        </mt-tabbar>
  </div>  
</template>

<script>
import TabBarIcon from "./TabBarIcon.vue"
import Destination from "./Destination.vue"
import Mine from "./mine.vue"
import Index from "./index.vue"
import Dingzhi from "./Dingzhi.vue"
import TabBarIconVue from './TabBarIcon.vue'
import add from './add.vue'
export default {
  data() {
    return {
      active:"my",
      currentIndex:[
        {isSelect:false},
        {isSelect:false},
        {isSelect:false},
        {isSelect:false},
        {isSelect:true}
      ],
      selected:"1"  
    }
  },
  methods: {
   jumplogin:function(){
    this.$router.push("/Login");
     
  },
  changeState(n){
      //函数功能:将当前参数下标
      //对应数组值修改true其它修改false
      //1:创建循环,循环数组中内容
      for(var i=0;i<this.currentIndex.length;i++){
       //2:判断如果循环下标与n相等 20
       if(n==i){
        //3:当前下标元素true 10:22
        this.currentIndex[i].isSelect=true;
       }else{
        //4:其它元素修改false
        this.currentIndex[i].isSelect=false;
       }
      }
      
      } 
 },
 components:{
    "tabbaricon":TabBarIcon,
    "destination":Destination,
    "mine":Mine,
    "index":Index,
    "add":add,
    "dingzhi":Dingzhi
    }
}
</script>

<style scoped>
   *{list-style: none; padding: 0;margin: 0;}
  #container{
    background: #efeff4;
  }
  .head{
    width: 100%;
    display: flex;
    background-color:black;
    background: rgba(0,0,0,0.8);
    color: white;
    font: 14px "微软雅黑";
    z-index: 10;
    position: fixed;
    justify-content: space-between;
  }
  .head img{
    width:24px; 
    height: 24px;
 }
  .liebiao img{
    width:25px;
    height:25px;
  }
  .liebiao{
    display:flex;
    justify-content:space-between;
    color:#929292;
  }
  .l1,.l2,.l3{
    display:flex;
    flex-direction:column;
    align-items:center;
  }
 .left,.right,.center{
   display:flex;
   flex-direction:column;
   display:flex;
   justify-content:space-around;
   align-items:center;
  }
 .tx{
   width:50px;
   height:50px;
   margin-top:20px;
 }
 .nicheng{
   color:#333333;
   font-weight:bold;
 }
 .tongbu{
   color:#63696f;
   font-size:3px;
   margin-bottom:3px;
 }
 .mine{
   margin-top:3px;
 }
 .touxiang{
   width:50px;
   height:50px;
 }
 #login{
   width:100%;
   height:100px;
   margin-top:40px;
   display:flex;
   justify-content:space-around;
   background:#fff;
 }
 .wz{
   display:flex;
   flex-direction:column;
   margin-right:50px;
   margin-top:20px;
 }
 .liebiao{
    width:200px;
    height:50px;
    display:flex;
    justify-content:space-between;
    font-size:1px;
 }
 .span1{
   color:#26a2ff;
   font:20px "微软雅黑";
 }
 .span2{
   margin-top:4px;
   color:#b7c0c4;
 }
 .img_xc{
   width:100%;
   margin-top:10px;
 }
 #d1,#d2{
    display:flex;
    flex-direction:column;
    justify-content:space-around;
    margin-top:100px;
    align-items:center;
    color:#8a8a8a;
 }
 #d1 img{
   width:50px;
   height:50px;
   margin-bottom:20px;
 }
 #d2 img{
   width:50px;
   height:50px;
   margin-bottom:20px;
 }
 mt-navbar{
   color:#858585;
 }
</style>