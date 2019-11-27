<template>
    <div> 
        <mt-tab-container class="page-tabbar-tab-container" v-model="active" swipeable>
        <mt-tab-container-item id="jingxuan">
        	<index></index>
        </mt-tab-container-item>
        <mt-tab-container-item id="target">
        	<destination></destination>
        </mt-tab-container-item>
        <mt-tab-container-item id="my">
        	<mine></mine>
        </mt-tab-container-item>
        <mt-tab-container-item id="dingzhi">
        	<dingzhi></dingzhi>
        </mt-tab-container-item>
        <mt-tab-container-item id="add">
        	<add></add>
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
import add from './add.vue'
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
    
</style>