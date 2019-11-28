<template>
    <div class="parent">
        <mt-header title="">
            <router-link to="/learnMore" slot="left">
                <mt-button icon="back">关于指南猫</mt-button>
            </router-link>
        </mt-header>
        <!-- <swiper :options="swiperOption">
            <swiper-slide> 
                <mt-navbar v-model="selected">
                    <mt-tab-item id="1"><img src="../assets/img/guidecat/1.0.jpg"></mt-tab-item>
                </mt-navbar>
                <mt-navbar v-model="selected" class="hide">
                    <mt-tab-item id="2"><img src="../assets/img/guidecat/2.0.jpg"></mt-tab-item>
                </mt-navbar>
                <mt-navbar v-model="selected" class="hide">
                    <mt-tab-item id="2"><img src="../assets/img/guidecat/3.0.jpg"></mt-tab-item>
                </mt-navbar>
                <mt-navbar v-model="selected" class="hide">
                    <mt-tab-item id="2"><img src="../assets/img/guidecat/4.0.jpg"></mt-tab-item>
                </mt-navbar>
                <mt-tab-container v-model="selected">
                    <mt-tab-container-item id="1">
                        <img src="../assets/img/guidecat/1.1.jpg">
                    </mt-tab-container-item>
                    <mt-tab-container-item id="2">
                        <img src="../assets/img/guidecat/2.1.jpg">
                    </mt-tab-container-item>
                    <mt-tab-container-item id="2">
                        <img src="../assets/img/guidecat/3.1.jpg">
                    </mt-tab-container-item>
                    <mt-tab-container-item id="2">
                        <img src="../assets/img/guidecat/4.1.jpg">
                    </mt-tab-container-item>
                </mt-tab-container>
            </swiper-slide> 

            <swiper-slide> 
                <mt-navbar v-model="selected">
                    <mt-tab-item id="2"><img src="../assets/img/guidecat/2.0.jpg"></mt-tab-item>
                </mt-navbar>
                <mt-tab-container v-model="selected">
                    <mt-tab-container-item id="2">
                        <img src="../assets/img/guidecat/2.1.jpg">
                    </mt-tab-container-item>
                </mt-tab-container>
            </swiper-slide> 

            <swiper-slide> 
                <mt-navbar v-model="selected">
                    <mt-tab-item id="2"><img src="../assets/img/guidecat/3.0.jpg"></mt-tab-item>
                </mt-navbar>
                <mt-tab-container v-model="selected">
                    <mt-tab-container-item id="2">
                        <img src="../assets/img/guidecat/3.1.jpg">
                    </mt-tab-container-item>
                </mt-tab-container>
            </swiper-slide> 

            <swiper-slide> 
                <mt-navbar v-model="selected">
                    <mt-tab-item id="2"><img src="../assets/img/guidecat/4.0.jpg"></mt-tab-item>
                </mt-navbar>
                <mt-tab-container v-model="selected">
                    <mt-tab-container-item id="2">
                        <img src="../assets/img/guidecat/4.1.jpg">
                    </mt-tab-container-item>
                </mt-tab-container>
            </swiper-slide> 
        </swiper> -->
        <van-collapse v-model="activeName" accordion>
            <van-collapse-item title="." name="1" class="guideCat_first">
                <img src="../assets/img/guidecat/1.1.jpg">
            </van-collapse-item>
            <van-collapse-item title="." name="2" class="guideCat_second">
                <img src="../assets/img/guidecat/2.1.jpg">
            </van-collapse-item>
            <van-collapse-item title="." name="3" class="guideCat_third">
                <img src="../assets/img/guidecat/3.1.jpg">
            </van-collapse-item>
            <van-collapse-item title="." name="4" class="guideCat_forth">
                <img src="../assets/img/guidecat/4.1.jpg">
            </van-collapse-item>
        </van-collapse>
    </div>
</template>
<script>
import { swiper, swiperSlide } from 'vue-awesome-swiper'
export default {
    data(){
        return{
            selected:1,
            activeName:'1',
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
    }
}
</script>
<style scoped>
.mint-header{
    background-color: #2d353e !important;
    height: 41px;
}
.swiper-container{
    height: 1500px;
    border:1px solid red;
}
.hide{
    display: none;
}
.van-hairline--top-bottom{
    margin-top: 10px;
}
.van-collapse-item__content{
    padding: 0 !important;
}
.guideCat_first{
    background: top url('../assets/img/guidecat/1.0.jpg') no-repeat
}
.guideCat_first img{
    margin-top: -1px;
}
.guideCat_second{
    background: top url('../assets/img/guidecat/2.0.jpg') no-repeat
}
.guideCat_second img{
    margin-top: -15px;
}
.guideCat_third{
    background: top url('../assets/img/guidecat/3.0.jpg') no-repeat
}
.guideCat_third img{
    margin-top: -15px;
}
.guideCat_forth{
    background: top url('../assets/img/guidecat/4.0.jpg') no-repeat
}
.guideCat_forth img{
    margin-top: -15px;
}
</style>
