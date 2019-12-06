<template>
    <div class="parent">
        <mt-header title="">
            <router-link to="/dingzhi" slot="left">
            <mt-button icon="back">翁国欣</mt-button>
            </router-link>
        </mt-header>
        <div class="banner1">
            <swiper :options="swiperOption">
                <swiper-slide class="swiper1" v-for="(item,i) of list" :key="i" v-lazy="item"> 
                <img class="img-css" :src="axios.defaults.baseURL+item.pic" >
                </swiper-slide>
            </swiper>
        </div>
        <div class="question">
            <img src="../assets/img/dingzhi_wgx/question.png" alt=""><span>咨询</span>
        </div>
        <div>
            <button class="first_button">找Ta定制</button>
        </div>
        <div class="banner2">
            <swiper :options="swiperOption">
                <swiper-slide > 
                    <img src="../assets/img/dingzhi_wgx/banner01.jpg" alt="">
                </swiper-slide>
                <swiper-slide > 
                    <img src="../assets/img/dingzhi_wgx/banner02.jpg" alt="">
                </swiper-slide>
                <swiper-slide > 
                    <img src="../assets/img/dingzhi_wgx/banner03.jpg" alt="">
                </swiper-slide>
                <swiper-slide > 
                    <img src="../assets/img/dingzhi_wgx/banner04.jpg" alt="">
                </swiper-slide>
            </swiper>
        </div>
        <div class="banner3">
            <swiper :options="swiperOption">
                <swiper-slide class="swiper1" v-for="(item,i) of list2" :key="i" v-lazy="item"> 
                <img class="img-css" :src="axios.defaults.baseURL+item.pic" ><br>
                <h5>{{item.pname}}</h5>
                <img src="../assets/img/dingzhi_wgx/star.jpg" alt=""><span class="rz">认证定制师</span>
                </swiper-slide>
            </swiper>
        </div>
        <div class="last_question">
            <h5>咨询</h5>
        </div>
        <div class="last_button">
            <button>找Ta定制</button>
        </div>
    </div>
</template>
<script>
import { swiper, swiperSlide } from 'vue-awesome-swiper'
export default {
    data(){
        return{
            list:[],
            list2:[],
            swiperOption:{
                slidesPerView: 'auto',
                centeredSlides:true,
                spaceBetween: 10,
                loop:true,
                speed:600, //config参数同swiper4,与官网一致
            }
        }
    },
     components: {
        swiper,
        swiperSlide
    },
    methods:{
        loadMore(){
            this.axios.get("/wgxImg1")
            .then(res=>{
            console.log(res);
            this.list=this.list.concat(res.data)})
            .catch(err=>{
            console.log(err)
            });
        },
        loadMore2(){
            this.axios.get("/wgxImg2")
            .then(res=>{
            console.log(res);
            this.list2=this.list2.concat(res.data)})
            .catch(err=>{
            console.log(err)
            });
        },
    },
    created(){
        this.loadMore();
        this.loadMore2();
    }
    
}
</script>
<style scoped>
.mint-header{
    background-color: #2d353e;
    height: 41px;
}
.parent{
    background: url('../assets/teacher.jpg');
    width: 100%;
    height: 4936px;
    position: relative;
    font-family: '宋体'
}
.first_button{
    position: absolute;
    width: 213px;
    height: 50px;
    background-color: rgba(0,0,0,0);
    border-radius: 25px;
    border: 0px solid red;
    color: #fff;
    left: 37%;
    top: 13.725%;
}
.question{
    width: 70px;
    position: absolute;
    /* border: 1px solid red; */
    top:13.9%;
    left: 11%;
}
.question span{
    position: absolute;
    top: 20%;

}
.banner1{
    height: 130px;
    width: 100%;
    overflow: hidden;
    position: absolute;
    top:10.6%;
    /* border: 1px solid red; */
}
.swiper1{
    width: 25% !important;
}
.swiper1>img{
    border-radius: 5%;
}
/* banner2 */
.swiper-slide{
    margin-left: 15px;
    width: 85%;
}
.banner2{
    height: 210px;
    width: 100%;
    position: absolute;
    /* border: 1px solid red; */
    top: 86%
}
.banner2 img{
    border-radius: 15px
}
.banner3{
    width: 100%;
    height: 200px;
    position: absolute;
    /* border: 1px solid red; */
    top:93.7%
}
.banner3 swiper-slide{
    width: 50%;
}
.rz{
    font-size: 15px;
}
.last_button{
    width: 110px;
    height: 40px;
    border: 0px solid red;
    position: absolute;
    top:99.05%;
    left:69%
}
.last_button button{
    width: 100px;
    color:#fff;
    background-color: rgba(0,0,0,0);
    border: 0px solid red;
    border-radius: 15px;
}
.last_question{
    position: absolute;
    top:99.35%;
    left:57%
}
</style>

