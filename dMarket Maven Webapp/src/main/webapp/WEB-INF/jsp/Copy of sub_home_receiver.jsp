<%@page contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>收件人</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap-theme.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/jquery.min.js"></script>
</head>
<body>
	<h4 class="text-primary">收货人信息</h4>
	<hr>
	<table class="table">
		<thead class="table-striped">
			<tr class="text-info">
				<th>收货地址</th>
				<th>收货姓名</th>
				<th>联系电话</th>
				<th>修改</th>
				<th>删除</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty receiverList}">
				<h3 class="text-primary">还没有添加收件人信息！</h3>
			</c:if>
			
			<c:if test="${not empty receiverList}">
				<c:forEach var="r" items="${receiverlist} ">
					<tr>
						<td>${r.address}</td>
						<td>${r.name}</td>
						<td>${r.telephone}</td>
						<td><a href="updateReceiver/${r.receiver_id }">修改</a></td>
						<td><a href="deleteReceiver/${r.receiver_id }">删除</a></td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	<br>
	<br>
	<br>
	<br>
	<hr>
	<h5 class="text-danger">新增收货人</h5>

</body>
</html>