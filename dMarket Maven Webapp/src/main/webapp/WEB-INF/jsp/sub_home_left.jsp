<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>个人中心左边</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/jquery.min.js"></script>

</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4 col-md-3 sidebar">
				<ul class="nav nav-pills nav-stacked">
					<li><a target="mainframe" href="sub_home_my">个人中心</a></li>
				</ul>

				<ul class="nav nav-sidebar">
					<li><a target="mainframe" href="sub_home_order">订单查询</a></li>
				</ul>

				<ul class="nav nav-sidebar">
					<li id="changePassword"><a target="mainframe"
						href="sub_home_pswChange">修改密码</a></li>
				</ul>

				<ul class="nav nav-sidebar">
					<li id="receiver"><a target="mainframe"
						href="sub_home_receiver">收货信息</a></li>
				</ul>

				<ul class="nav nav-sidebar">
					<li id="myCollection"><a target="mainframe"
						href="sub_home_collection">我的收藏</a></li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>