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
        <van-tabs>
            <van-tab title="推荐">
                <div>
                    <van-grid :border="false" :column-num="3" :gutter="10">
                        <van-grid-item>
                            <img src="../assets/img/guidecat/1.0.jpg" alt="">
                        </van-grid-item>
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-2.jpg" />
                        </van-grid-item>
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-3.jpg" />
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
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
.mint-header{
    background-color: #2d353e;
    height: 41px;
}
</style>
