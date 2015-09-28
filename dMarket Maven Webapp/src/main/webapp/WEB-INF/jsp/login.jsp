<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>叮咚-欢迎登陆</title>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrap/jquery.min.js"></script>
	<link href="css/signin.css" rel="stylesheet">
	<link href="easydialog-v2.0/easydialog.css" rel="stylesheet">
	<script type="text/javascript" src="easydialog-v2.0/easydialog.js"></script>
	
	<style type="text/css">
		div {
		display: block;
		}

		#footer-2013 {
		padding-bottom: 30px;
		text-align: center;
					}
		#logo {
		position: relative;
		width: 400px;
		margin: 10px 0 0;
		height: 60px;
		}
		.w {
		width: 990px;
		margin: 0 auto;
		}
		.content{
			 width="1349px";
			  height="475px"
		}
	</style>
</head>
<body>
	<div id="logo" class="w" >
		<p >
			<h1 class="text-center "  style="color: #B1191A">叮咚商城</h1>
		</p>
	</div>
	<div class="container" style="background-color: #F94747">
		<div class="row">		            
		<div class="col-xs-6 col-sm-1" style="background-color: #F94747"><br></div>
		<div class="col-xs-6 col-sm-6" style="background-color: #F94747">
			<img src="image/loginBackground.png">
		</div>
		<div class="col-xs-6 col-sm-4" style="background-color: #F94747">
			<div  style="background-color: #ffffff">
				<div  style="background-color: #F94747"><br></div>
				<div  style="background-color: #F94747"><br></div>
        		<div  style="background-color: #F94747"><br></div>
        		
        		
        		<!-- 登录表单 -->
     	 <form id="formLogin" class="form-signin" action="login" method="post">
        		<h2 class="text-center text-danger">叮咚会员</h2><br>
        		
        		<input type="text" name="userName" class="form-control" placeholder="用户名/手机/邮箱" required autofocus>
        		
        		<input type="password" name="password" class="form-control" placeholder="密码" required>
        		
       			<div id="isChecked" class="checkbox">
         		 <label>
            		<input type="checkbox" value="remember-me">记住密码
         	 	</label>
       			</div>
       			<div>
       				<button type="submit" class="btn btn-lg btn-primary btn-block btn-danger" >登录</button>
       			</div>
       			
        		<h5 class="text-right"><a href="register.html">木有账号？赶紧注册</a></h5>
        		<h5 class="text-warning">公共场所不建议自动登录以防账号丢失</h5>
      	</form>
      			<div  style="background-color: #F94747"><br></div>
        		<div  style="background-color: #F94747"><br></div>
        		<div  style="background-color: #F94747"><br></div>
        		
   			 </div>
		</div>
			<div class="col-xs-6 col-sm-3" style="background-color: #F94747"></div>		
		</div>
		</div>
	<div class="container" style="background-color: #ffffff">
		<br><br><br><br></div>
	
	
	<!-- 使用包含子页面的方法 -->
	<jsp:include page="sub_footer.jsp" />
</body>
</html>