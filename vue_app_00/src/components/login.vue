
<template>
<div class="cfb-login" style="display: block;">
    <div class="cfb-login-title">
        <a href="javascript:;"></a>
        <h2 class="title" style="padding-top:10px">登录账户</h2>
        <button href="" class="register" @click="to_reg">注册</button>
    </div>
    <div class="cfb-form">
        <form>
            <div class="cfb-input-section">
                <div class="cfb-input">
                    <label for="">
                        <input type="text" name="uname" placeholder="用户名" required="" v-model="uname">
                    </label>
                </div>
                <div class="cfb-input">
                    <label for="">
                        <input type="password" name="upwd" placeholder="密码" required="" v-model="upwd">
                    </label>
                </div>
            </div>
            <div class="cfb-info">
                <span class="cfb-checkbox">
                    <label for="">
                    <input type="checkbox">记住我</label>
                </span>
                <a href="" class="cfb-txt">忘记密码？</a>
                <div></div>
            </div>
            <div class="cfb-btn-submit">
                <button style="font-size:22px;" @click="login">登录</button>
            </div>
        </form>
    </div>
    <div class="cfb-title-or">
        <h2 class="title">其他登录方式</h2>
        <div class="line-l"></div>
        <div class="line-r"></div>
    </div>
    <div class="cfb-other-login">
        <a href="" class="lr-btn">
        <img src="../assets/qq_1.png" alt="" class="ico-weibo">
        </a>
        <a href="" class="lr-btn">
        <img src="../assets/weibo_1.png" alt="" class="ico-weibo">
        </a>
        <a href="" class="lr-btn">
        <img src="../assets/weixin_1.png" alt="" class="ico-weibo lie">
        </a>
    </div>
</div>
</template>
<style scoped>
    .cfb-login{
        width: 100%;
        height:100%;
        position:fixed;
        border-radius: 4%;
        z-index:1000;
        padding:0 20px;
        color:#fff;
        border-radius:4px;
        background-color:#5fd3ac;
        background-color:rgba(51,204,153,0.9)
        }
    .cfb-login-title{
        position: relative;
        height: 64px;
        margin-top: 70px;
        margin-bottom: 20px;
        line-height: 64px;
        text-align: center;
        color: white;
        border-bottom: 1px solid rgba(255,255,255,0.6);
    }
    .cfb-login-title .register {
        position: absolute;
        background:#5fd3ac;
        background-color:rgba(51,204,153,0.9);
        top: 0;
        right: 0;
        font-size: 16px;
        text-decoration: none;
        color: white;
    }
    .cfb-login .cfb-form {
        width: 280px;
        margin: 0 auto 60px;
        font-size: 16px;
    }
    .cfb-login .cfb-input-section{
        margin-bottom: 10px;
        overflow: hidden;
        font-size: 16px;
    }
    .cfb-login .cfb-input {
        position: relative;
        margin-top: -1px;
        border-bottom: 1px solid #fff;
        border-bottom: 1px solid rgba(255,255,255,0.6);
    }
    .cfb-login .cfb-input label{
        border-bottom: #fff;
        border-bottom-width:1px; 
    }
    .cfb-login .cfb-input input {
        width: 245px;
        padding: 15px 35px 15px 0;
        color: white;
        border: none;
        background: none;
    }
    input::-webkit-input-placeholder{
        color:#e1ece8;
        font-size:20px;
    }
    .cfb-login .cfb-info {
        height: 60px;
        font-size: 12px;
        text-shadow: 0 0 1px rgba(255,255,255,0.4);
        color:#ccc;
    }
    .cfb-login .cfb-info .cfb-checkbox {
        color: white;
        color: rgba(255,255,255,0.6);
    }
    .cfb-login .cfb-info .cfb-checkbox input {
        margin-right: 8px;
    }
    .cfb-login .cfb-info .cfb-txt {
        float: right;
        cursor: pointer;
        text-decoration: none;
        color: white;
        color: rgba(255,255,255,0.6);
    }
    .cfb-login .cfb-btn-submit, .cfb-login .cfb-btn-link a, .cfb-login .cfb-btn-submit button {
        display: block;
        width: 278px;
        height: 46px;
        margin: 0 auto;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        color: #3c9;
        -webkit-border-radius: 4px;
        border-radius: 4px;
        text-shadow: 0 0 1px rgba(255,255,255,0.4);
        -webkit-text-shadow: 0 0 1px rgba(255,255,255,0.4);
    }
    .cfb-login .cfb-title-or {
        position: relative;
        margin-bottom: 0;
        text-align: center;
    }
    .cfb-login .cfb-title-or .title {
        font-size: 16px;
        line-height: 1;
        text-shadow: 0 0 1px rgba(255,255,255,0.4);
        -webkit-text-shadow: 0 0 1px rgba(255,255,255,0.4);
    }
    .cfb-login .cfb-title-or .line-l {
        left: 0;
        position: absolute;
        top: 6px;
        width: 100px;
        height: 1px;
        background-color: white;
        background-color: rgba(255,255,255,0.6);
    }
    .cfb-login .cfb-title-or .line-r {
        right: 0;
        position: absolute;
        top: 6px;
        width: 100px;
        height: 1px;
        background-color: white;
        background-color: rgba(255,255,255,0.6);
    }
    .cfb-login .cfb-other-login .lr-btn {
        position: relative;
        top: 50%;
        display: inline-block;
        width: 62px;
        height: 62px;
        margin-top: 50px;
        margin-left: 40px;
        -webkit-transition: all 0.3s linear;
        transition: all 0.3s linear;
        border: 1px solid #fff;
        -webkit-border-radius: 50%;
        border-radius: 50%;
        
    }
    .cfb-login .cfb-other-login .lr-btn .ico-weibo {
        background-position: -2px -2px;
        width: 45px;
        height: 45px;
        margin-left: 5px;
        margin-top:5px;
    }
    .cfb-login .cfb-other-login .lr-btn .lie{
        margin-left: 8px;
        margin-top:7px;
    }
</style>
<script>
export default {
	//1.保存第二个数据uname upwd
	data() {
		return {
			uname:"",//用户名
			upwd:""//密码
		}
	},
	methods: {
        to_reg(){
            this.$router.push("/reg");
        },
		login(){
			//功能：完成用户登录操作
			//1.创建正则表达式 3~12
			var reg=/^[a-z0-9]{3,12}$/i;
			//2.获取用户输入 用户名/密码
			var u=this.uname;
			var p=this.upwd;
			console.log(u+"_"+p);
			//3.验证用户名如果不匹配 提示框
			if(!reg.test(u)){
				this.$messagebox("消息","用户名格式不正确");
				return;
			}
			//4.验证密码如果不匹配 提示框
			if(!reg.test(p)){
				this.$messagebox("消息","密码格式不正确");
				return;
			}
			//5.发送ajax请求完成登录验证
			var url="/login";
			var obj={uname:u,upwd:p};
			this.axios.get(url,{params:obj})
			.then(res=>{//成功回调
				console.log(res.data.code)
				if(res.data.code==200){
				//1  跳转  /product  商品列表
					this.$router.push("/aftermine");
				}else{
					this.$toast("用户名和密码有误");
				//-1  提示框
				}
			})
			.catch(err=>{//失败回调
				console.log(err)
			})
			//6.登陆成功 跳转商品页面
			//7.登录失败 提示框
		}
	},
}
</script>
