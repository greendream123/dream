<template>
    <div class="parent">
        <mt-header title="不能穿鞋上岛,每年只开6个月!">
            <router-link to="/dingzhi" slot="left">
                <mt-button icon="back">返回</mt-button>
            </router-link>
            <mt-button icon="more" slot="right"></mt-button>
        </mt-header>
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
    background: url('../assets/barefeet.jpg');
    width: 100%;
    height: 8000px;
    font-family: '宋体'
}
</style>
