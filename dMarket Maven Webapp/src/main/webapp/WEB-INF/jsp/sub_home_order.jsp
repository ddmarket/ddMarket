
<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>我的订单</title>
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
	<h4 class="text-primary">个人订单</h4>
	<hr>


	<!-- 无订单数据的情况 -->
	<c:if test="${empty  orderList }">
		<h3 class="info">哟,新来的吧,还没有订单哦！！！</h3>
	</c:if>

	<!-- 有订单数据的情况 -->
	<c:if test="${not empty  orderList }">
		<table class="table table-hover  table-bordered">
			<thead>
				<tr class="success h3">
					<td>订单编号</td>
					<td>成交状态</td>
					<td>物流信息</td>
					<td>订单时间</td>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${orderList }" var="o" varStatus="s">
					<!-- 奇数样式 -->
					<tr onclick="showOrderDetail('${o.order_id }')">
						<td>${o.order_id }</td>
						<td>${o.orderstates }</td>
						<td>${o.expressinfo }</td>
						<td>${o.ordertime }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</c:if>
	<script type="text/javascript">
			function showOrderDetail(oid) {
				javascript: window
						.open(
								'orderDetail?oid='+oid,
								'',
								'height=600,width=800,toolbar=no,menubar=no,scrollbars=yes, resizable=no,location=no, status=no');
			};
		</script>

</body>
</html>