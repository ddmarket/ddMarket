<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>叮咚-新用户注册</title>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrap/jquery.min.js"></script>
	<link href="signin.css" rel="stylesheet">
	<style type="text/css">
		#footer-2013 {
		padding-bottom: 30px;
		text-align: center;
					}
		.ftx04, .flk04 a:link, .flk04 a:visited, a.flk04:link, a.flk04:visited {
		color: #F00;
		}
	</style>
</head>
<body>
	<div class="container" style="background-color: #ffffff">
		<div class="row">
			<div class="col-xs-6 col-sm-3"><br></div>
			<div class="col-xs-6 col-sm-4">

				<!-- ---------------------------form表单区域---------------------------------- -->
				<form class="form-signin" action="register" method="post">
					<h1 class="text-center text-danger">叮咚注册</h1>
					<input type="text" name="name" class="form-control"
						placeholder="用户名" required autofocus><br>
					<br>
					<!-- 缺乏前端校验 -->
					<input type="password" name="password" class="form-control"
						placeholder="密码" required autofocus><br>
					<br> <input type="password" name="password2"
						class="form-control" placeholder="密码确认" required autofocus><br>
					<br> <input type="text" name="telephone" class="form-control"
						placeholder="手机号" required autofocus><br>
					<br> <input type="email" name="email" class="form-control"
						placeholder="电子邮箱" required autofocus><br>
					<br>
					<div class="checkbox">
						<label> <input type="checkbox" value="接受"><a
							href="##">我已经阅读并接受叮咚商城注册协议</a>
						</label>
					</div>
					<div>
						<button class="btn btn-lg btn-primary btn-block btn-danger"
							type="submit">注册</button>
					</div>
					<br>
					<br>
				</form>

				<!-- ---------------------------form表单区域---------------------------------- -->
		
		</div>
			<div class="col-xs-6 col-sm-3"><br></div>
			</div>
			
		</div>
	
	<!-- 使用包含子页面的方法 -->
	<jsp:include page="sub_footer.jsp" />

	
</body>
</html>