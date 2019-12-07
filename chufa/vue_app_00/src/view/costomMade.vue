<template>
    <div class="parent">
        <mt-header title="选择出行目的地(1/3)">
            <router-link to="/dingzhi" slot="left">
            <mt-button icon="back"></mt-button>
            <!-- <mt-button @click="handleClose">close</mt-button> -->
            </router-link>
            <mt-button icon="search" slot="right"></mt-button>
        </mt-header>

        <!-- body -->
        <van-tabs class="top">
            <van-tab title="推荐">
                
                <div class="first">
                    <h5>当季热门 /6</h5>
                    <van-grid :border="false" :column-num="2" :gutter="8" >
                        <van-grid-item v-for="(item,i) of list" :key="i" v-lazy="item" @click="display">
                            <div class="mask"  :style="{display:hide}"></div>
                                <a href="javascript:;"><img  :src="axios.defaults.baseURL+item.rm"></a>
                        </van-grid-item>
                    </van-grid>
                    <h5>蜜月度假 /6</h5>
                    <van-grid :border="false" :column-num="2" :gutter="8">
                        <van-grid-item v-for="(item,i) of list" :key="i" v-lazy="item" @click="display">
                            <div class="mask"  :style="{display:hide}"></div>
                            <img :src="axios.defaults.baseURL+item.my">
                        </van-grid-item>
                    </van-grid>
                    <h5>美食购物 /6</h5>
                    <van-grid :border="false" :column-num="2" :gutter="8">
                        <van-grid-item v-for="(item,i) of list" :key="i" v-lazy="item" @click="display">
                            <div class="mask"  :style="{display:hide}"></div>
                            <img :src="axios.defaults.baseURL+item.ms">
                        </van-grid-item>
                    </van-grid>
                    <h5>野趣极限 /5</h5>
                    <van-grid :border="false" :column-num="2" :gutter="8">
                        <van-grid-item v-for="(item,i) of list" :key="i" v-lazy="item" @click="display">
                            <div class="mask"  :style="{display:hide}"></div>
                            <img :src="axios.defaults.baseURL+item.yq">
                        </van-grid-item>
                    </van-grid>
                    <h5>静心修禅 /6</h5>
                    <van-grid :border="false" :column-num="2" :gutter="8">
                        <van-grid-item v-for="(item,i) of list" :key="i" v-lazy="item" @click="display">
                            <div class="mask"  :style="{display:hide}"></div>
                            <img :src="axios.defaults.baseURL+item.jx">
                        </van-grid-item>
                    </van-grid>
                    <h5>亲子旅行 /6</h5>
                    <van-grid :border="false" :column-num="2" :gutter="8">
                        <van-grid-item v-for="(item,i) of list" :key="i" v-lazy="item" @click="display">
                            <div class="mask"  :style="{display:hide}"></div>
                            <img :src="axios.defaults.baseURL+item.qz">
                        </van-grid-item>
                    </van-grid>
                </div>
            </van-tab>
            <van-tab title="亚洲">
           
            </van-tab>
            <van-tab title="欧洲">
            
            </van-tab>
            <van-tab title="美洲">
            
            </van-tab>
            <van-tab title="大洋洲">
            
            </van-tab>
            <van-tab title="非洲">
            
            </van-tab>
        </van-tabs>
        <div class="footer">
            <h5 v-show="!show">选择目的地...</h5>
            <h5 v-show="show">已经选择{{num}}个目的地</h5>
            <button v-show="!show" disabled>下一步</button>
            <button v-show="show" >下一步</button>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            list:[],
            show:false,
            num:0,
            hide:'none'
        }
    },
    methods:{
        loadMore(){
            this.axios.get("/costomMade")
            .then(res=>{
            console.log(res);
            this.list=this.list.concat(res.data)})
            .catch(err=>{
            console.log(err)
            });
        },
        display(e){
            this.show=!this.show
            if(this.show===true){
                this.hide='block'
                this.num+=1;
            }else{
                this.hide='none'
                this.num-=1
            }
            console.log(this.num)
            console.log(e.target)
        }
    },
    created(){
        this.loadMore();
    }
}
</script>
<style scoped>
.parent{
    background-color: #fff;
    position: relative;
}
.mint-header{
    background-color: #2d353e;
    width: 100%;
    height: 41px;
    position: fixed;
    top: 0;
    left: 0;
    z-index:999;
}
.top{
    margin-top: 41px;
}
.first>h5{
    margin-top: 15px;
    margin-left: 17px;
}
.first img{
    border-radius:15px; 
}
.first>>>.van-grid-item__content{
padding: 0px 0px;
}
.mask{
    width: 150px;
    height: 100px;
    border-radius:15px; 
    background-color: rgba(0,255,255,0.5);
    position: absolute;
    top:0px;

}
.footer{
    position: fixed;
    bottom: 0px;
    left: 0;
    /* border: 1px solid red; */
    background-color: #fff;
    width: 100%;
    height: 51px;
    z-index: 100;
}
.footer>h5{
    margin-top: 19px;
    margin-left: 10%;
}
.footer>button{
    float: right;
    margin-top: -28px;
    margin-right: 20px;
}
</style>
