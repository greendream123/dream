<template>
  <div id="container">
    <!--顶部导航栏-->
    <div class="head">
      <div class="left" style="width:68px;height:40px">
        <img class="leida" src="../assets/mine.png">
      </div>
      <div class="center" style="width:68px;height:40px">我的</div>
    </div>
    <table></table>
    <!--登录-->
    <div id="login">
      <div class="tx">
        <img class="touxiang" src="../assets/touxiang.png">
      </div>
      <div class="wz">
        <span class="span1" @click="jumplogin">点击登录</span>
        <span class="span2">出发,去探索这个世界</span>
      </div>
    </div>
    <!--选项卡-->
    <mt-navbar v-model="selected">
      <mt-tab-item id="1">行程</mt-tab-item>
      <mt-tab-item id="2">印象</mt-tab-item>
      <mt-tab-item id="3">收藏</mt-tab-item>
    </mt-navbar>

<!-- tab-container -->
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
  </div>  
</template>

<script>
export default {
  data() {
    return {
      selected:"1"  
    }
  },
  methods: {
   jumplogin:function(){
    this.$router.push("/Login")
  } 
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
 .left,.center{
    display: flex;
    align-items: center;
    justify-content: space-around;
 }
 .center{
   margin-right:152px;
 }
 .tx{
   width:50px;
   height:50px;
 }
 .touxiang{
   width:50px;
   height:50px;
 }
 #login{
   margin-top:60px;
   display:flex;
   justify-content:space-around;
   margin-bottom:15px;
 }
 .wz{
   display:flex;
   flex-direction:column;
   margin-right:50px;
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