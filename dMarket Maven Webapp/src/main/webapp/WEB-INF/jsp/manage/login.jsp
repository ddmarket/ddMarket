<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>叮咚超市后台登录</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<!-- CSS -->

<link rel="stylesheet" href="hui/css/supersized.css">
<link rel="stylesheet" href="hui/css/login.css">
<link href="hui/css/bootstrap.min.css" rel="stylesheet">

<script src="hui/js/jquery-1.8.2.min.js"></script>
<script src="hui/js/jquery.form.js"></script>
<script type="text/javascript" src="hui/js/tooltips.js"></script>
<script type="text/javascript" src="hui/js/login.js"></script>
<script src="hui/js/supersized.3.2.7.min.js"></script>
<script src="hui/js/supersized-init.js"></script>
<script src="hui/js/scripts.js"></script>
</head>



<body>
	<script type="text/javascript">
			$(function(){
				if('${error}'!=""){
					show_err_msg('${error}');
				} 
			});
		</script>
	<div class="page-container">
		<div class="main_box">
			<div class="login_box">
				<div class="login_logo">
					<img src="hui/images/logo.png">
				</div>

				<div class="login_form">
					<form action="adminLogin" id="login_form" method="post">
						<div class="form-group">
							<label for="userName" class="t">用户名:</label> <input id="userName"
								value="" name="name" type="text" class="form-control x319 in"
								autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="t">密 码: </label> <input
								id="password" value="" name="password" type="password"
								class="password form-control x319 in">
						</div>

						<div class="form-group space" align="center">
							<button type="button" id="submit_btn"
								class="btn btn-primary btn-lg">&nbsp;登&nbsp;录&nbsp;</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
