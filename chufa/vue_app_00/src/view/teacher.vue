<template>
    <div class="parent">
        <mt-header title="">
            <router-link to="/dingzhi" slot="left">
            <mt-button icon="back">翁国欣</mt-button>
            </router-link>
        </mt-header>
        <div>
            <button class="first_button">找Ta定制</button>
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
    background: url('../assets/teacher.jpg');
    width: 100%;
    height: 4936px;
    position: relative;
}
.first_button{
    position: absolute;
    width: 200px;
    height: 50px;
    border: 1px solid red;
}
</style>

