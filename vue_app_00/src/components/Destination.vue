<template>
  <div class="container">
    <!--顶部导航栏-->
    <div class="head">
      <div class="left" style="width:68px;height:40px">
        <img class="leida" src="../assets/leida.png">
      </div>
      <div class="center" style="width:68px;height:40px">目的地</div>
      <div class="right" style="width:68px;height:40px">
        <img src="../assets/search.png" alt="">
      </div>
    </div>
    <table></table>
    <!--目的地-->
      <div class="destination">
        <div class="before"><span>看过:</span></div>
        <div class="btns">
          <div class="btn"><span>曼谷</span></div>
          <div class="btn"><span>东京</span></div>
          <div class="btn"><span>济南</span></div>
          <div class="btn"><span>成都</span></div>
          <div class="btn"><span>上海</span></div>
        </div>
      </div>
    <!--国外-->
     <div id="f1">
        <span class="f1">国外</span>
        <span class="f2">更多目的地></span>
     </div>
     <div id="f2" v-for="(item,i) of list">
       <img :src="'http://127.0.0.1:3000/'+item.Dimg">
     </div>
     <div class="clear"></div>
    <!--国内-->
     <div id="guonei">
        <span class="gn">国内</span>
        <span class="more">更多目的地></span>
     </div>
     <div id="f2" class="gnimgs" v-for="(item,n) of list2" >
       <img :src="'http://127.0.0.1:3000/'+item.Dimg">
     </div>
  </div>  
</template>

<script>
import Footer from "./footer.vue"
export default {
  //组件创建成功调用此函数
  created() {
    this.loadMore();
  },
  data() {
    return {
      list:[],//查询结果列表
      list2:[]
    }
  },
  methods: {
    loadMore(){
      //功能:获取国外图片列表
      this.axios.get("/destImgf").then(res=>{
        this.list=this.list.concat(res.data);
      }).catch(err=>{
        console.log(err)
      });
      //功能:获取国内图片列表
      this.axios.get("/destImgc").then(res=>{
        this.list2=this.list2.concat(res.data);
      }).catch(err=>{
        console.log(err)
      })
    }
  }
}
</script>

<style scoped>
  *{list-style: none; padding: 0;margin: 0;}
  .container{
    background: white;
    padding: 0;
  }
  .head{
    width: 100%;
    display: flex;
    background-color:black;
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
 .right,.left,.center{
    display: flex;
    align-items: center;
    justify-content: space-around;
 }
 .destination{
    background: #ededed;
    display: flex;
    overflow: hidden;
    height: 40px;
    margin-top:40px;
    color: #999999;
    font: 14px "微软雅黑";
 }
 .before{
    display:flex;
    align-items:center;
 }
 .before span{
   font-size: 16px;
 }
 .btn{
    border:1px solid #c3cfce;
    color:#819e9e;
    font: 14px "微软雅黑";
    background:#e2e4e4;
    display:flex;
    justify-content:space-around;
    align-items:center;
    border-radius:5px;
 }
 .btn span{
    padding:2px 6px;
    width: 40px;
 }
 .btns{
    display:flex;
    align-items:center;
 }
 .btns div{
    margin-left:8px;
 }
  #f1{
    display:flex;
    justify-content:space-between;
    align-content:center;
    flex-wrap:wrap;
    margin-top:10px;
  }
  .f1,.gn{
    font:20px "Arial";
    margin-left:15px;
  }
  .f2,.more{
    font: 14px "微软雅黑";
    margin-right:15px;
    margin-top:5px;
    color:#9a9a9a;
  }
  #f2{ 
    box-sizing:border-box;
    margin-top:20px;
  }
  .clear{clear:both;}
  #guonei {
    display:flex;
    justify-content:space-between;
  }
   #f2 img{
    float:left;
    width:30%;
    height:180px;
    margin-left:10px;
    overflow:hidden;
    margin-bottom:10px;
  }
  .right img{
    width:24px; 
    height: 24px;
}
  .left img{
    width:19px;
    height:19px;
  }
</style>