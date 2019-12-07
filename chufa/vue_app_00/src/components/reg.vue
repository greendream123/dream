<template>
  <div>
  <div class="container">
    <div class="cfb-lr-bg"></div>
<div class="cfb-lr-bg-mask"></div>
<div id="cfb-lr-area" class="cfb-lr-area">
    <div class="h5-scroll">
        <a class="cfb-lr-logo" href="/"></a>
        <div class="cfb-title">
            <h2 class="title">注册账户</h2>
            <div class="line-l"></div>
            <div class="line-r"></div>
        </div>
        <div>
            <div class="cfb-form-area">
                    <div class="cfb-input-section">
                        <div class="cfb-input">
                            <label for="email">
                                <input type="email" name="email" placeholder="邮箱" required="" v-model="email">
                            </label>
                            <i class="ico-info"></i>
                        </div>
                        <div class="cfb-input">
                            <label for="nickname">
                                <input type="text" name="nickname" placeholder="用户名" required="" v-model="uname">
                            </label>
                            <i class="ico-info"></i>
                        </div>
                        <div class="cfb-input">
                            <label for="password">
                                <input type="password" name="password" placeholder="密码" required="" v-model="upwd">
                            </label>
                            <i class="ico-info"></i>
                        </div>
                        <div class="cfb-input">
                            <label for="confirm">
                                <input type="password" name="confirm" placeholder="确认密码" required="" v-model="upwd">
                            </label>
                            <i class="ico-info"></i>
                        </div>
                    </div>
                    <div class="cfb-info">
                        <span class="cfb-checkbox">
                          <label for="keep-checkbox">
                            <input type="checkbox" id="keep-checkbox">已同意</label>
                            <a class="negotiate" href="">《用户服务协议》</a>
                            <a class="negotiate" href="">《隐私政策》</a></span>
                        <div class="cfb-info cfb-info-show cfb-info-error" id="cfb-info-show"></div>
                    </div>
                    <div class="cfb-btn-submit" style="margin-bottom: 20px">
                        <button @click="vali">注册</button>
                    </div>
            </div>
            </div>
            <div class="cfb-btn-link">
                <router-link to="/login">已有账户？<span>立即登录</span></router-link>
            </div>
        </div>
    </div>
</div>
</div>
</template>
<style scoped>
.container {
    padding-bottom: 0;
    position: relative;
    min-height: 100%;
    background: white;
}
cfb-lr-bg {
    width: 100%;
}
.cfb-lr-bg {
    position: fixed;
    position: absolute\9;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 0;
    width: 100%\9;
    height: 100%\9;
    overflow: hidden;
    background-position: 50% 50%;
    background-size: cover;
    background-image:url("../assets/背景.jpg");
}
.cfb-lr-bg-mask {
    position: fixed;
    top: 0;
    left: 0;
    z-index: 1;
    width: 100%;
    height: 100%;
    background-color: rgba(0,0,0,0.5);
}
.cfb-lr-area {
    position: relative;
    top: 0;
    left: 0;
    height: 610px;
    margin: 0 auto;
    margin: 0 auto;
    color: #fff;
}
.h5-scroll {
    position: fixed;
    top: 0;
    left: 0;
    z-index: 2;
    width: 100%;
    height: 100%;
    margin-bottom: 20px;
    overflow-x: hidden;
    overflow-y: auto;
    -webkit-overflow-scrolling: touch;
}
.cfb-lr-logo {
    display: block;
    width: 80px;
    height: 98px;
    margin: 40px auto 40px;
    cursor: pointer;
    background-position: 0 -115px;
    background: url("../assets/1png.png");
}
.cfb-title {
    position: relative;
    width: 280px;
    margin: 0 auto 20px;
    text-align: center;
}
.cfb-title .title {
    font-size: 16px;
    line-height: 1;
    text-shadow: 0 0 1px rgba(255,255,255,0.4);
}
.line-l {
    left: 0;
    position: absolute;
    top: 6px;
    width: 100px;
    height: 1px;
    background-color: white;
    background-color: rgba(255,255,255,0.6);
}
.line-r {
    right: 0;
    position: absolute;
    top: 6px;
    width: 100px;
    height: 1px;
    background-color: white;
    background-color: rgba(255,255,255,0.6);
}
.cfb-form-area {
    width: 280px;
    margin: 0 auto;
    font-size: 16px;
}
.cfb-input-section {
    margin-bottom: 10px;
    overflow: hidden;
    font-size: 16px;
    border-radius: 4px;
}
.cfb-input {
    position: relative;
    margin-top: -1px;
    border-top: 1px solid #e6e6e6;
    background-color: white;
    color:#666
}
.cfb-input input {
    width: 233px;
    padding: 15px 35px 15px 12px;
    border: none;
}
form{
  padding: 0;
  margin: 0;
}
label {
    cursor: default;
}
.cfb-info {
    height: 60px;
    font-size: 12px;
    text-shadow: 0 0 1px rgba(255,255,255,0.4);
}
.cfb-info .cfb-checkbox input {
    margin-right: 8px;
}
.cfb-info .cfb-checkbox .negotiate {
    cursor: pointer;
    text-decoration: none;
    color: #3c9;
}
.cfb-info-show {
    margin: 10px;
    clear: both;
    text-align: center;
    text-shadow: 0 0 1px rgba(255,255,255,0.4);
}
.cfb-btn-submit {
    display: block;
    width: 278px;
    height: 46px;
    margin: 0 auto;
    line-height: 48px;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    color: white;
    -webkit-border-radius: 4px;
    border-radius: 4px;
    text-shadow: 0 0 1px rgba(255,255,255,0.4);
    -webkit-text-shadow: 0 0 1px rgba(255,255,255,0.4);
}
.cfb-btn-submit button {
    border: 1px solid #3c9;
    background-color: #3c9;
    color: white;
    width: 278px;
    height: 46px;
}
.cfb-btn-link a{
  display: block;
    width: 278px;
    height: 46px;
    margin: 0 auto;
    line-height: 48px;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    color: white;
    -webkit-border-radius: 4px;
    border-radius: 4px;
}
.cfb-btn-link a span {
    color: #3c9;
}
.cfb-btn-link {
    padding-bottom: 40px;
}
</style>
<script>
export default {
	data() {
		return {
            email:"",//邮箱
			uname:"",//用户名
			upwd:""//密码
		}
	},
	methods: {
		vali(){
            //创建正则表达式 3~12
            let reg=/^[a-z0-9]{3,12}$/i;
            let ereg=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/i;
            //获取用户输入 邮箱/用户名/密码
            let e=this.email;
            let u=this.uname;
            let p=this.upwd;
            console.log(u+"_"+p+"_"+e);
            //验证邮箱如果不匹配 提示框
            if(!ereg.test(e)){
                this.$messagebox("消息","邮箱格式不正确");
                return;
            }
            //验证用户名如果不匹配 提示框
            if(!reg.test(u)){
                this.$messagebox("消息","用户名格式不正确");
                return;
            }
            //验证密码如果不匹配 提示框
            if(!reg.test(p)){
                this.$messagebox("消息","密码格式不正确");
                return;
            }
            
            //发送ajax请求完成注册
            var obj={uname:u,upwd:p,email:e};
            var url="/reg";
            this.axios.post("/reg",Qs.stringify({uname:u,upwd:p,email:e}))
            .then(res=>{
                if(res.data.code==1){
                    this.$router.push("/login");
                }else{
                    this.$toast(`登录失败: ${res.data.msg}`);
                }
            })
		}
	},
}
</script>
