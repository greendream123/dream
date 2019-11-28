<template>
    <div class="parent">
        <mt-header fixed title="定制">
            <mt-button slot="right">定制订单</mt-button>
        </mt-header>
        <div class="first">
            <table></table>
            <div class="change">
                <h2>近万名旅行订制师,</h2>
                <h2>服务覆盖178个国家。</h2>
            </div>
            <div class="myself">
                私人订制旅行,比自助游还便宜。
            </div>
            <span><router-link to="/learnMore" :style="{color:'#fff'}">详细了解></router-link></span>
            
            <router-link to="/costomMade">
                <button>立即定制</button>
            </router-link>
        </div>
        <div class="banner">
            <mt-swipe :auto="3000" :show-indicators="false">
                <mt-swipe-item><img src="../assets/banner01.jpg" alt=""></mt-swipe-item>
                <mt-swipe-item><img src="../assets/banner02.jpg" alt=""></mt-swipe-item>
                <mt-swipe-item><img src="../assets/banner03.jpg" alt=""></mt-swipe-item>
                <mt-swipe-item><img src="../assets/banner04.jpg" alt=""></mt-swipe-item>
            </mt-swipe>
        </div>
        <div class="bianji">
            <h2>编辑精选</h2>
            <a href="javascript:;">点击查看更多</a>
        </div>
        <table></table>
        <div class="banner2">
            <mt-swipe :auto="3000" :show-indicators="false">
                <mt-swipe-item v-for="(item,i) of list" :key="i" v-lazy="item">
                    <router-link to="/barefeet">
                        <img :src="'http://127.0.0.1:3000/'+item.pic" alt="1">
                    </router-link>
                </mt-swipe-item>
            </mt-swipe>
        </div>
        <div class="good">
            <h2>优秀订制师推荐</h2>
            <a href="javascript:;">点击查看更多</a>
        </div>
        <table></table>
        <!-- 优秀订制师 -->
        <div class="goodTeacher">
            <div class="goodTeacher_left">
                <router-link to="/teacher">
                    <img src="../assets/teacher01.jpg" alt="">
                </router-link>
            </div>
            <div class="goodTeacher_right">
                <h3>翁国欣</h3>
                <img src="../assets/zhongji.png" alt="">
                <img style="margin-left:85px" src="../assets/teacher001.jpg" alt="">
                <img src="../assets/start.png" alt="">
                <h4>好评率:100%</h4>
            </div>
        </div>
        <div style="position:relative">
            <div class="mask">
                <swiper :options="swiperOption">
                    <swiper-slide class="swiper1" v-for="(item,i) of list2" :key="i" v-lazy="item">
                        <router-link to="/teacher">
                            <img class="img-css" :src="'http://127.0.0.1:3000/'+item.pic" >
                            <img src="../assets/teji.jpg" alt="">
                        </router-link>
                    </swiper-slide>
                </swiper>
            </div>
        </div>
        <div class="zengxuan">
            <h2>甄选行程参考</h2>
            <a href="javascript:;">点击查看详情</a>
        </div>
        <!-- 甄选行程-->
        <div class="zx" style="position:relative">
            <div class="mask2">
                <swiper :options="swiperOption">
                    <swiper-slide v-for="(item,i) of list3" :key="i" v-lazy="item">
                        <router-link to="/trip"><img class="img-css" :src="'http://127.0.0.1:3000/'+item.pic"></router-link>
                    </swiper-slide>
                </swiper>
            </div>
        </div>
        <div class="zengxuan">
            <h2>真实用户评价</h2>
            <a href="javascript:;">点击查看详情</a>
        </div>

        <div class="banner">
            <mt-swipe :auto="3000" :show-indicators="true">
                <mt-swipe-item><img src="../assets/banner05.jpg" alt=""></mt-swipe-item>
                <mt-swipe-item><img src="../assets/banner06.jpg" alt=""></mt-swipe-item>
                <mt-swipe-item><img src="../assets/banner07.jpg" alt=""></mt-swipe-item>
                <mt-swipe-item><img src="../assets/banner08.jpg" alt=""></mt-swipe-item>
            </mt-swipe>
        </div>
    </div>
</template>
<script>
import { swiper, swiperSlide } from 'vue-awesome-swiper'
export default {
    name:"",
    data() {
        return {
            list:[],
            list2:[],
            list3:[],
            value: 5,
            swiperOption:{
                slidesPerView: 'auto',
                centeredSlides:true,
                spaceBetween: 10,
                loop:true,
                speed:600, //config参数同swiper4,与官网一致
            }
        };
    },
    components: {
        swiper,
        swiperSlide
    },
    methods:{
        loadMore(){
            this.axios.get("/dingzhiImg1")
            .then(res=>{
            console.log(res);
            this.list=res.data})
            .catch(err=>{
            console.log(err)
            });
        },
        loadMore2(){
            this.axios.get("/dingzhiImg2")
            .then(res=>{
            console.log(res);
            this.list2=this.list2.concat(res.data)})
            .catch(err=>{
            console.log(err)
            });
        },
        loadMore3(){
            this.axios.get("/dingzhiImg3")
            .then(res=>{
            console.log(res);
            this.list3=this.list3.concat(res.data)})
            .catch(err=>{
            console.log(err)
            });
        },
    },
    created(){
        this.loadMore();
        this.loadMore2();
        this.loadMore3();
    }
}
</script>
<style scoped>

.parent{
    background: #fff;
}
.swiper1{
    width: 35% !important;
}
.swiper-slide{
    margin-left: 15px;
    width: 50%;
}
.img-css{
    border-radius: 10px;
    overflow: hidden;
}
.mint-header{
    background-color: #2d353e;
    height: 41px;
}
.first{
    margin-top: 15px;
    width: 100%;
    height: 383px;
    background: url('../assets/head.jpg');
}
.first>span{
    color: aliceblue;
    float: left;
    margin-left: 30px;
    margin-top: 30px;
}
.first button{
    width: 327px;
    height: 57px;
    color: #39cea2;
    font-size: 19px;
    background-color:rgba(0,0,0,0);
    border: 0;
    margin-top: 15px;
    margin-left: 7%;
    border-radius:15px; 

}
.change{
    margin-top: 90px;
    margin-left: 0px;
}
.change>h2{
    margin: 10px;
    color: #fff;
}
.myself{
    margin-left: 20px;
    margin-top: 20px;
    color: rgba(256,256,256,0.7)
}
/* 第一个轮播图 */
.banner{
    height: 80px;
    width: 330px;
    border-radius: 25px;
    /* border: 1px solid red; */
    margin-top: -30px;
    margin-left: 20px;
    box-shadow: #ccc 0px 16px 28px 5px;
    overflow: hidden;
}
.bianji{
    float: left;
    margin-left: 15px;
}
.bianji>h1{
    margin-bottom: 10px;
}
.bianji>a{
    text-decoration: none;
    color: #999;
}
/* 第二个轮播图 */
.banner2{
    margin-top: 100px;
    margin-left: 22px;
    clear: both;
    width: 330px;
    height: 438px;
    border-radius:15px; 
    overflow: hidden;
    box-shadow: #ccc 0px 16px 28px 5px;
}
/* 优秀订制师推荐 */
.good{
    float: left;
    margin-left: 15px;
}
.good>h2{
    margin-top: 20px;
    margin-bottom: 10px;
}
.good>a{
    text-decoration: none;
    color: #999;
    margin-left: 0px;
}
.goodTeacher{
    clear: both;
    display: flex;
    margin-top: 100px;
    justify-content: space-around;
}
.goodTeacher_left{
    margin-left: 0px;
    border-radius:10px;
    overflow: hidden; 
}
.goodTeacher_right{
    display: flex;
    flex-direction:column;
    align-items: center;
    margin-left: -100px;
    margin-right: 0;
}
.goodTeacher_right>h3{
    margin-bottom: 5px;
    margin-top: 5px;
    margin-left: -15px;
}
.goodTeacher_right>img{
    margin-left: 25px;
}
.goodTeacher_right>h4{
    margin-top: 3px;
    margin-bottom: 0;
    margin-left: 15px;
    color: #ffd21e;
}
.mask{
    margin-top: 20px;
}
/* 甄选 */
.zengxuan{
    float: left;
    margin-left: 20px;
}
.zengxuan>h2{
    margin-bottom: 10px;
    margin-top: 15px;
}
.zengxuan>a{
    text-decoration: none;
    color: #999;
    padding-bottom: 20px;
    /* margin-left: -50px; */
}
/* 甄选遮罩层 */
.mask2{
    margin-top: 20px;
    width: 360px;
    overflow: hidden;
}
/* 甄选左按钮 */
.zx_leftimg{
    position: absolute;
    /* border: 1px solid red; */
    top: 160px;
    left: 25px;
}
/* 甄选右按钮 */
.zx_rightimg{
    position: absolute;
    top: 160px;
    left: 320px;
    /* border: 1px solid red; */
}
.zengxuan_list>li{
    float: left;
    margin-left: 20px;
    border-radius: 15px;
    overflow: hidden;
}
</style>
