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
			<div class="panel-heading">商品信息</div>
			<div class="panel-body">
				<table class="table">
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
						<tr>
							<td>文明之光文明之光文明之光文明之光文明之光</td>
							<td>武汉仓库</td>
							<td>107</td>
							<td>1</td>
							<td>107</td>
						</tr>
						<tr>
							<td>文明之光文明之光</td>
							<td>武汉仓库</td>
							<td>10</td>
							<td>1</td>
							<td>107</td>
						</tr>
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
						</div>


						<div class="receiver">
							<ul>
								<li>
									<div>
										<input name="addr" type="radio" value="addr_0"> <span>收货人1
										</span><span>收货地址1 </span><span>联系方式1 </span>
									</div>
								</li>
								<li>
									<div>
										<input name="addr" type="radio" value="addr_1"> <span>收货人2
										</span><span>收货地址2 </span><span>联系方式2 </span>
									</div>
								</li>
							</ul>
						</div>
					</li>
					<li>支付方式

						<form action="" method="post">
							<input name="pay" type="radio" value="">在线支付 <input
								name="pay" type="radio" value="">货到付款
						</form>
					</li>
				</ul>
			</div>
		</div>



		<div class="wrap">
			<div class="col-lg-9 panel panel-danger">
				<div class="panel-body">
					<h1>确认收货地址</h1>
					<span>收货人1 </span><span>收货地址1 </span><span>联系方式1 </span>
				</div>
			</div>
			<div class="col-lg-3 folatRight panel panel-info">
				<div class="panel-body">
					<p>商品总计：</p>
					<p>运费:</p>
					<p>应付总额（含运费）:</p>
					<button type="submit" class="btn btn-success btn-lg ">提交订单</button>
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
		
		
		
		/* $.post("http://www.baidu.com", {
				"uid" : '${user.user_id}',
				"name" : $("#name").val(),
				"place" : $("#place").val(),
				"tel" : $("#tel").val()
			}, function(date) {
				alert(date);
			});  */
				alert($("#name").val());
			
		}
	</script>



</body>
</html>