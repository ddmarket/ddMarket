<%@page import="com.dingdong.pojo.Item"%>
<%@page contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>商品详情</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<script src="bootstrap/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="jqueryQuantity/js/payfor.js"></script>

<style type="text/css">
.btn4 {
	height: 50px;
	background-color: #DE3C2E
}

hr {
	height: 1px;
	border-top: 1px solid #0066CC;
}

.c2 {
	border-left: 2px solid #0066CC;
	border-top: 2px solid #0066CC;
	border-right: 2px solid #0066CC;
	border-bottom: 2px solid #0066CC;
	height: 400px;
}

.p1 {
	font-size: 20px;
	font-family: 微软雅黑;
	color: red;
	margin-top: 10px
}

.p2 {
	font-size: 16px;
	color: #000;
	margin-top: 20px;
	font-family: 幼圆;
}

/*主要面板*/
.panel {
	background-color: #fff;
	border: solid 1px transparent
}

.panel-header {
	border-bottom: solid 1px transparent;
	padding: 8px 15px;
	font-size: 14px;
	font-weight: 700
} /*面板标题*/
.panel-body {
	padding: 15px
} /*面板内容*/
.panel-footer {
	background-color: #f5f5f5;
	border-top: 1px solid #ddd;
	padding: 5px 20px
} /*面板页脚*/
/*默认面板*/
.panel-default {
	border-color: #ddd;
}

.panel-default>.panel-header {
	border-color: #ddd;
	background-color: #f5f5f5;
	color: #444
}

/*主要面板*/
.panel-primary {
	border-color: #5a98de;
}

.panel-primary>.panel-header {
	border-color: #5a98de;
	background-color: #5a98de;
	color: #fff
}

/*次要面板*/
.panel-secondary {
	border-color: #3bb4f2;
}

.panel-secondary>.panel-header {
	border-color: #3bb4f2;
	background-color: #3bb4f2;
	color: #fff
}

/*成功面板*/
.panel-success {
	border-color: #5eb95e;
}

.panel-success>.panel-header {
	border-color: #5eb95e;
	background-color: #5eb95e;
	color: #fff
}

/*警告面板*/
.panel-warning {
	border-color: #f37b1d;
}

.panel-warning>.panel-header {
	border-color: #f37b1d;
	background-color: #f37b1d;
	color: #fff
}

/*危险面板*/
.panel-danger {
	border-color: #dd514c;
}

.panel-danger>.panel-header {
	border-color: #dd514c;
	background-color: #dd514c;
	color: #fff
}
</style>
</head>

<body>

	<!-- 引入顶部个人状态栏 -->
	<jsp:include page="sub_header.jsp"></jsp:include>


	<div class="container" style=" width: 1100px !important;">
		<div class="row">
			<div class="col-md-6">
				<a href="index"><img src="image/logo.png"></a>
			</div>
			<div class="col-md-6">
				<form action="#" method="">
					<div class="input-group">
						<input id="searchGood" type="text" class="form-control"
							placeholder="Search for..."> <span
							class="input-group-btn">
							<button id="searchBtn" class="btn btn-primary" type="button">搜索!</button>
						</span>
					</div>
					<!-- /input-group -->
				</form>
			</div>
			<!-- /.col-lg-6 -->
		</div>
	</div>

	<div>
		<div class="container-f"
			style="margin-left:10%; width: 1200px !important;">
			<div class="row">
				<hr>
				<div class="col-xs-5 col-md-5 c3">
					<img style="margin-left:80px; width: 400px; height: 400px" id="r1"
						src=${item.headPic}?imageView2/1/w/400/h/400/q/90/format/jpg
						alt="图片加载中..." class="img-thumbnail">
				</div>

				<div class="col-xs-5 col-md-5">
					<div>
						<h3 style="color: #000; margin-left: 20px;font-family:宋体">
							${item.name}</h3>
					</div>
					<div style="background-color:#C5BEBE;height:100px">
						<h3
							style="color: #FB052B;margin-left: 20px;margin-bottom:25px;margin-top:25px;font-family:黑体;">
							叮咚价：￥ <strong id="price_item_1"> ${item.price} </strong>
						</h3>
						<h4 style="color: #000;margin-left: 20px;">促销信息：全场包邮</h4>
					</div>
					<div>
						<p class="p1">
							配送至：
							<!-- 用户地址 -->
						</p>
					</div>
					<div class="p_number">
						<div class="f_l add_chose">
							<p
								style="font-size:25px;color: #000;margin-top: 20px;margin-right: 50px;font-family:宋体">
								数量 <a class="reduce" onClick="setAmount.reduce('#qty_item_1')"
									href="javascript:void(0)">-</a> <input type="text"
									name="qty_item_1" value="1" id="qty_item_1"
									onKeyUp="setAmount.modify('#qty_item_1')" class="text"
									style="width:60px;" /> <a class="add"
									onclick="setAmount.add('#qty_item_1')"
									href="javascript:void(0)"> +</a>
							</p>
						</div>
						<div class="f_l buy">
							总价：<span class="total-font" id="total_item_1" style="color:red"></span>
							<input type="hidden" name="total_price" id="total_price" value="" />
						</div>
						<br>
						<div class="container">
							<div class="row">
								<div class="col-xs-2 col-md-2">
									<button id="shoppingBtn" type="button" onclick="addCart()"
										class="btn btn-danger btn4">
										<img src="image/shopping.png">加入购物车
									</button>
								</div>
								<!-- 数量id="qty_item1",总价id="total_price" -->
								<div class="col-xs-2 col-md-2">
									<img onclick="changeSrc(this)" src="image/dsc.png">
								</div>
								<!-- 收藏，这里要判断是否已经收藏 -->
								<div class="col-xs-8 col-md-8"></div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-2 col-md-2 c2">
					<p class="p1">已选中的商品</p>
					<div class="container">
						<div class="row">
							<div>
								<c:forEach var="ci" items="${cart }">

									<h6 class="cartType">商品编号：${ci.key } , 数量：${ci.value}</h6>
									<br>
									<!-- 调用购物车的商品信息 -->
								</c:forEach>

							</div>

						</div>
					</div>

					<div id="gotoCart">
						<button id="shoppingBtn" type="button" onclick="gotoCart()"
							class="btn btn-danger btn4">
							<img src="image/shopping.png">去结算
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<hr>
	<br>


	<!-- 商品详情页面 -->
	<div class="container"
		style="margin-left:10%; width: 1200px !important; position: center">

		<div class="panel panel-success">
			<div class="panel-header">产品简介</div>
			<div class="panel-body">${item.introduction }</div>
		</div>
		<br> <br>

		<div class="panel panel-warning">
			<div class="panel-header">产品大图</div>
			<div class="panel-body">
				<img alt="产品大图"
					src=${item.headPic}?imageView2/1/w/800/h/800/q/90/format/jpg>
			</div>
		</div>

		<br> <br> <br> <br> <br> <br>

		<!-- 使用包含子页面的方法 -->
		<jsp:include page="sub_footer.jsp" />
		<br>


		<script type="text/javascript">
			function addCart() {
				var num = $("#qty_item_1").val();
				var id = '${item.item_id}';
				var url = "addCart?num=" + num + "&id=" + id;
				window.location.href = url;
			};

			function gotoCart() {
				window.location.href = "gotoCart";
			};
		</script>
</body>
</html>