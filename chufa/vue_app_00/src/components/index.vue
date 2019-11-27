<template>
    <div id="body">
        <mt-tab-container class="page-tabbar-tab-container" v-model="active" swipeable>
        <mt-tab-container-item id="target">
        	<!-- <destination></destination> -->
        </mt-tab-container-item>
        <mt-tab-container-item id="my">
        	<!-- <mine></mine> -->
        </mt-tab-container-item>
        </mt-tab-container>
        <mt-navbar id="head" class="head" v-model="active">
            <div style="padding-top:10px;"><img src="../img/add_friends.png" alt=""></div>
            <mt-tab-item class="head_font mint-tab-item-label" id="1">精 选</mt-tab-item>
            <mt-tab-item class="head_font mint-tab-item-label" id="2">定 制</mt-tab-item>
            <mt-tab-item class="head_font mint-tab-item-label" id="3">热 门</mt-tab-item>
            <mt-tab-item class="head_font mint-tab-item-label" id="4">关 注</mt-tab-item>
            <div style="padding-top:10px;"><img src="../img/search.png" alt=""></div>
        </mt-navbar>
        <table></table>
        <div id="container">
          <div style="width:100%;">
            <div id="photo">
            <img src="../img/carouse1.png" />
            <img src="../img/carouse2.png" />
            <img src="../img/carouse3.png" />
            </div>
          </div>
        </div>
        <div class="body_img">
            <div>
                <img src="../img/do_router.jpg" alt="">
                <div style="margin-left:0px;">做行程</div>
                <p>旅行DIY</p>
            </div>
            <div>
                <img src="../img/qudingzhi.png" alt="" style="margin-left:5px;">
                <div style="margin-bottom:4px;">去定制</div>
                <p>10元/天qi</p>
            </div>
            <div>
                <img src="../img/xieyinxiang.jpg" alt="">
                <div>写印象</div>
                <p>记录一瞬间</p>
            </div>
        </div>
        <div id="f2" v-for="(item,i) of list" :key="i">
          <img :src="'http://127.0.0.1:3000/'+item.Iimg" class="index_img">
          <div class="index_msg">
          <div  class=" index_msg1">{{item.Ititle}}</div>
          <div  class=" index_msg2">{{item.Isubtitle}}</div>
          </div>
        </div>
        
    </div>
</template>
<script>

export default {
  created() {
    this.loadMore();
  },
  data(){
    return {
      list:[],
      active:"jingxuan",
      currentIndex:[
        {isSelect:true},
        {isSelect:false},
        {isSelect:false},
        {isSelect:false},
        {isSelect:false}
      ],
      selected:"1"
    };
  },
  methods:{
    loadMore(){
      this.axios.get("/indexImg").then(res=>{
        console.log(res);
        this.list=this.list.concat(res.data);
      }).catch(err=>{
        console.log(err)
      });
      
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
  
};
</script>
<style scoped>
    *{padding: 0;margin: 0;list-style: none;box-sizing: border-box;}
   #body{
     background: white;
   }
    .head{
        background:#2c353e;
        width: 100%;
        display: flex;
        height: 40px;
        justify-content:space-around;
        position: fixed;
        z-index: 10;
        color: lightgrey;
        padding: 0 20px;
    }
    .head img{
        width: 20px;
        height: 20px;
    }
    .head mt-tab-item{height: 20px;}
   #container {
    margin-top: 40px;
	width: 100%;
	height: 230px;
	overflow: hidden;
}
 .mint-navbar .mint-tab-item.is-selected{border-bottom: 3px solid limegreen;}
 
#photo {
	width: 1200px;
	animation: switch 10s ease-out infinite;
}
.head_font{
  height: 41px;
  font: 14px "微软雅黑";margin-left:5px 
}

#photo > img {
	float: left;
	width: 400px;
	height: 230px;
}
 
@keyframes switch {
	0%, 25% {
		margin-left: 0;
	}
	35%, 60% {
		margin-left: -400px;
	}
	70%, 100% {
		margin-left: -800px;
	}

}
.body_img{
    display: flex;
    justify-content:space-around;
    padding: 20px 10px;
}
.body_img div{
  font:14px "微软雅黑"; 
}
.body_img p{
  font: 10px "微软雅黑";
}
mt-tabbar  img{
  width: 24px;
  height: 24px;
}
#add{
  width: 48px;
  height: 48px;
}
.footer{
  display: flex;
}
.mint-navbar .mint-tab-item.is-selected{color:lightgrey;font-size: 16px; }
.head_font:hover{color: white;font-size: 20px;}
.index_img{
  margin:0 0 8px 8px;
  width: 96%;
  height: 200px;
}
.index_msg{
  color: white;
  position: relative;
  top:-136px;
  display: flex;
  flex-direction: column;
  align-items: center;
}
#f2{
  height: 205px;
}
</style>