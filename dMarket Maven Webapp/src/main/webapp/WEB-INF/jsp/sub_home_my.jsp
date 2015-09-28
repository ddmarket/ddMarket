<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title> ${user.name }个人中心</title>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrap/jquery.min.js"></script>
</head>
<body>
	<h4 class="text-primary">个人信息</h4><hr>
	<div class="row">
			<div class="col-xs-6 col-sm-3"><br></div>
			<div class="col-xs-6 col-sm-5">
				<form action="userupdate" method="post" style="font-size: 22px;">
				用户名：&nbsp;&nbsp;&nbsp;&nbsp;<span>${user.name } </span><br><br><br>
				联系方式：<input type="text" name="telephone" value= ${user.telephone }  required><br><br><br>
				用户邮箱：<input type="text" name="email" value= ${user.email }  required><br><br><br>
				会员积分：<span>${user.credit } </span>
				<br><br>
				<div>
					<button type="submit" class="btn btn-primary btn-lg">修改信息</button>
				</div>
				</form>
			</div>
		</div>
		<br>
</body>
</html>