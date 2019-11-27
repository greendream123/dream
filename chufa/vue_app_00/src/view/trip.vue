<template>
    <div class="parent">
        <mt-header title="婺源阳光和秋|诗与岁月和你">
            <router-link to="/dingzhi" slot="left">
            <mt-button icon="back">返回</mt-button>
            </router-link>
        </mt-header>
        <div class="first_button">
            <router-link to="">
                <button>定制此行程</button>
            </router-link>
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
    background: url('../assets/trip.jpg');
    width: 100%;
    height: 24249px;
    position: relative;
}
.first_button{
    position: absolute;
    top:2.4%;
    left: 66%
}
.first_button button{
    width: 105px;
    height: 40px;
    border-radius: 25px;
    border: 0px;
    color: #3dcfcf;
    background-color: rgba(0,0,0,0)
}
</style>
