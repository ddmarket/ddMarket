<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="bootstrap/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<title>叮咚-订单详情</title>
<style>
.alter {
	font-size: 20px;
	margin-bottom: 10px;
	margin-left: 250px
}

li {
	list-style-type: none;
}

.btnManage {
	color: #337AB7;
	background-color: #B6CFF7;
	border-color: #B6CFF7;
	border-radius: 3px;
	font-size: 25px
}
</style>
</head>


<body>
	<h1 align="center">订单详细信息</h1>
	<div class="alter">
		<hr>

		<c:forEach items="${orderItemMap }" var="odm" varStatus="s">
			<ul>
				<li>商品名称:${odm.value.name }</li>
				<li>商品价格:${odm.value.price }</li>
				<li>商品数量:${odm.key.account }</li>
				<li>费用小计:${odm.key.amount }</li>
			</ul>
			<hr>
		</c:forEach>

	</div>
	<div align="center">
		<button onclick="JavaScript:window.close()" id="cancelBtn"
			type="button" class="btnManage">关闭</button>
	</div>


</body>
</html>