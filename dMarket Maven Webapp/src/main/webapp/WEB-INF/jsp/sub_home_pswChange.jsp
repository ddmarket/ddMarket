<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>修改密码</title>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrap/jquery.min.js"></script>
	
</head>
<body>
	<h4 class="text-primary">修改密码</h4><hr>
	<div class="col-xs-6 col-sm-3"><br></div>
	<div class="col-xs-6 col-sm-5">
		<form action="##" method="post" style="font-size: 22px;">
			原密码&nbsp;&nbsp;&nbsp;&nbsp;：<input type="password" name="oldPassword" required><br><br><br>
			新密码&nbsp;&nbsp;&nbsp;&nbsp;：<input type="password" name="newPassword" required><br><br><br>
			密码确认：<input type="password" name="newPassword2" required><br><br>
			<button type="submit" class="btn btn-primary btn-lg">修改密码</button>
		</form>
	</div>
</body>
</html>