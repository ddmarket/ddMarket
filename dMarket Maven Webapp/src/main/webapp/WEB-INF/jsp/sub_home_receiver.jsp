<%@page contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>收件人</title>

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



	<c:if test="${empty receiverList}">
		<h3 class="text-primary">还没有添加收件人信息！</h3>
	</c:if>

	<c:if test="${not empty receiverList}">
		<table class="table table-hover  table-bordered">
			<thead>
				<tr class="success h3">
					<th>收货姓名</th>
					<th>收货地址</th>
					<th>联系电话</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="r" items="${receiverList }">
					<tr>
						<td>${r.name }</td>
						<td>${r.address }</td>
						<td>${r.telephone }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	<br>
	<br>
	<br>
	<hr>

</body>
</html>