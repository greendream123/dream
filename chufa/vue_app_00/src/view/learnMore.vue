<template>
    <div class="parent">
        <mt-header title="关于指南猫">
            <router-link to="/dingzhi" slot="left">
            <mt-button icon="back">返回</mt-button>
            </router-link>
        </mt-header>
        <div >
            <router-link to="/guideCat">
                <button class="first_button">查看各个套餐的区别</button>
            </router-link>
        </div>
        <div>
            <button class="second_button">立即免费订制</button>
        </div>
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
.parent{
    background: url('../assets/learnMore.jpg');
    width: 100%;
    height: 6435px;
    position: relative;
     font-family: '宋体'
}
.first_button{
    position: absolute;
    width: 170px;
    border: 0px solid red;
    outline: none;
    top:78.04%;
    left: 27.5%;
    border-radius: 25px;
    overflow: hidden;
}
.second_button{
    width: 330px;
    height: 50px;
    color: #fff;
    background-color: rgba(0,0,0,0);
    position: absolute;
    top: 98.1%;
    left: 6%;
    border: 0;
    border-radius: 25px;
}
</style>
