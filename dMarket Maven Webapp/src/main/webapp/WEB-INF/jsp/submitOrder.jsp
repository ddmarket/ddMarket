<%@page contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<script src="bootstrap/js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>


<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">




<title>提交结算</title>
</head>


<body>

	<!-- 引入顶部个人状态栏 -->
	<jsp:include page="sub_header.jsp"></jsp:include>


	<div class="col-md-6" style="margin-left: 10%;">
		<a href="index"><img src="image/logo.png"></a>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">

		<div class="shoplist panel panel-warning">
			<div class="panel-heading">订单信息</div>
			<div class="panel-body">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>商品名称</th>
							<th>所在仓库</th>
							<th>单价</th>
							<th>数量</th>
							<th>小计</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="i" items="${cart }">
							<tr class="text-c va-m">
							<tr>
								<td>${i.key.name }</td>
								<td>${i.key.repertory }</td>
								<td>${i.key.price }</td>
								<td>${i.value }</td>
								<td>${i.key.price * i.value }</td>
							</tr>
						</c:forEach>
					</tbody>
					</tbody>
				</table>
			</div>
		</div>


		<div class="receive panel panel-danger">
			<div class="panel-heading">收货信息</div>
			<div class="panel-body">
				<ul>
					<li>收货地址
						<button type="button" class="btn btn-danger" style="float: right;"
							data-toggle="modal" data-target="#newReceive">新增地址</button> <!--  -->

						<!-- Modal -->
						<div class="modal fade" id="newReceive" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h3 class="modal-title" id="myModalLabel">新增收货人</h3>
									</div>
									<div class="modal-body">
										<form class="form-horizontal" id="newAddr" action=""
											method="post" data-role="collapsible">
											<div class="control-group">
												<label class="control-label h4">收&nbsp;&nbsp;货&nbsp;&nbsp;人：</label>
												<input type="text" tabindex="1" id="name" required autofocus>
											</div>
											<div class="control-group">
												<label class="control-label h4"> 收货地址：</label> <input
													type="text" tabindex="2" id="place" required>
											</div>
											<div class="control-group">
												<label class="control-label h4"> 联系方式：</label> <input
													type="text" tabindex="5" id="tel" required>
											</div>

											<br> <br>
										</form>
										<div class="control-group">
											<button onclick="addReceiverXHR()" class="btn btn-danger"
												style="margin-left: 100px;">确认添加</button>
											<button class="btn btn-default" data-dismiss="modal">取消添加</button>
										</div>

									</div>
								</div>
							</div>
						</div> <br> <br> <br>
						<div class="receiver">
							<c:forEach var="r" items="${receiverList }">
								<input name="rid" type="radio" multiple="" id="rid"
									value="${r.receiver_id }" />  ${r.name },${r.address }, ${r.telephone }
								<br>
							</c:forEach>
						</div>
					</li>
				</ul>
			</div>
		</div>



		<div class="wrap" style="align:right">
			<div class="col-lg-3 folatRight panel panel-info" style="margin-left: 80%;"> 
				<div class="panel-body">
					<button onclick="buyNow()" type="submit"
						class="btn btn-success btn-lg ">提交订单</button>
				</div>
			</div>
		</div>
	</div>


	<!-- 使用包含子页面的方法 -->
	<jsp:include page="sub_footer.jsp" />



	<script type="text/javascript">
		$(function() {
			if ($.browser.msie && $.browser.version.substr(0, 1) < 7) {
				$('li').has('ul').mouseover(function() {
					$(this).children('ul').css('visibility', 'visible');
				}).mouseout(function() {
					$(this).children('ul').css('visibility', 'hidden');
				})
			}
		});

		function addReceiverXHR() {

			$.post("addReceiverPost", {
				"uid" : '${user.user_id}',
				"name" : $("#name").val(),
				"place" : $("#place").val(),
				"tel" : $("#tel").val()
			}, function(date) {
				alert("新增成功，请刷新");
			});
		};

		function buyNow() {
			var rid = $("#rid").val();
			var url = "buyNow?rid=" + rid;
			window.location.href = url;
		};
	</script>



</body>
</html>