<template>
<div class="contain">
      <table></table>
			<div class="boxbg1">
				<div class="lin hei">
				<img src="../assets/旅行.png" alt="" class="pic">
				<div class="float">
				 <h4>做旅行</h4>
			     <span>旅行DIY</span>
				</div>
				<img src="../assets/右箭头.png" alt="" class="img">
				</div>
			</div>
			<div class="boxbg2">
				<div class="lin">
				<img src="../assets/行李箱.png" alt="" class="pic">
				<div class="float">
				<h4>去订制</h4>
				<span>10元/天起</span>
				</div>
				<img src="../assets/右箭头.png" alt="" class="img">
				</div>
			</div>
			<div class="boxbg3">
				<div class="lin">
				<img src="../assets/定制家居.png" alt="" class="pic">
				<div class="float">
				<h4>写印象</h4>
				<span>记录一瞬间</span>
				</div >
				<div style="margin-right:15px;">
				<img src="../assets/右箭头.png" alt="" class="img">
				</div>
			</div>
			</div>
		  <img src="../assets/错号-无框.png" alt="" class="wrong">
	</div>
</template>
<style scoped>
  .wrong{
    width: 32px;
    height:32px;
    position: relative;
    left: 170px;
    margin-top: 80px;
  }
  .hei{
    margin-top: 150px;
  }
  .contain{
				height:100%;
				background-color: #5FD3AC;
				background-color:rgba(51,204,153,0.9);
			}
			.boxbg1{
        margin-top: 200px;
				width:80%;
				height:100px;
				margin: 0 auto;
				background-color:#F0F8FF;
				border-radius:0.625rem;
			}
			.boxbg2{
				width:80%;
				height:100px;
				margin:0 auto;
				background-color:#F0F8FF;
				margin-top:3.125rem;
				border-radius:0.625rem;
				
			}
		    .boxbg3{
				width:80%;
				height:100px;
				margin:0 auto;
				background-color:#F0F8FF;
				margin-top:3.125rem;
				border-radius:0.625rem;
			}
			.pic{
				width:50px;
				height:50px;
				float:left;

			}
		    .float{
				float:left;
				margin-left:15px;
				font-size:15px;
			}
			.lin{
				padding:15px;
				line-height:3.125rem;
			}
			a{
				text-decoration:none;
				color: #808080;
				font-size:2.5rem;
				line-height:7.5rem;
				position:relative;
				left:25rem;
			}
      .img{
        position: relative;
        width: 60px;
        height: 60px;
        left: 80px;
      }
</style>