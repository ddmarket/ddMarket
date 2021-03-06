<%@page contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>商品检索</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="bootstrap/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="hui/js/back-top-yinbro.js"></script>









<style type="text/css">
.a2 {
	font-size: 40px;
	color: red;
	margin-right: 20px;
}

hr {
	height: 1px;
	border-top: 1px solid #0066CC;
}

strong {
	color: red;
}

.s1 {
	float: right;
}
</style>
</head>

<body>

	<!-- 引入顶部个人状态栏 -->
	<jsp:include page="sub_header.jsp"></jsp:include>





	<!-- 搜索框 -->
	<div class="col-md-6" style="width: 500px;position: center">
		<form action="search" method="get">
			<div class="input-group">
				<input name="key" type="text" class="form-control"
					placeholder="搜索商品"> <span class="input-group-btn">
					<button id="searchBtn" class="btn btn-primary" type="button">搜索</button>
				</span>
			</div>
		</form>
	</div>
	<br>
	<br>

	<!-- 热销推荐--fade -->
	<h2 style="color: #0070C0; margin-left: 20px;font-family:微软雅黑">热销推荐</h2>
	<hr>
	<div class="container" style="width:1100px !important;">
	
					<div class="col-xs-3 col-md-3">
						<a href="itemDetail?iid=39"><img
							style="width: 250px; height: 250px" id="r1"
							src=http://7xn0yn.com1.z0.glb.clouddn.com/1444149601325.jpg?imageView2/1/w/250/h/250/q/70/format/jpg
							alt="图片加载中..." class="img-thumbnail"></a> <strong>￥
							156 </strong> <strong class="s1">销量：100 </strong><br>
						<p>鲜花</p>
					</div>
				
					<div class="col-xs-3 col-md-3">
						<a href="itemDetail?iid=34"><img
							style="width: 250px; height: 250px" id="r1"
							src=http://7xn0yn.com1.z0.glb.clouddn.com/1444148961853.jpg?imageView2/1/w/250/h/250/q/70/format/jpg
							alt="图片加载中..." class="img-thumbnail"></a> <strong>￥
							156 </strong> <strong class="s1">销量：100 </strong><br>
						<p>哇哈哈酸奶</p>
					</div>
				
					<div class="col-xs-3 col-md-3">
						<a href="itemDetail?iid=33"><img
							style="width: 250px; height: 250px" id="r1"
							src=http://7xn0yn.com1.z0.glb.clouddn.com/1444148850796.jpg?imageView2/1/w/250/h/250/q/70/format/jpg
							alt="图片加载中..." class="img-thumbnail"></a> <strong>￥
							156 </strong> <strong class="s1">销量：100 </strong><br>
						<p>利益优酸乳牛奶</p>
					</div>
				
					<div class="col-xs-3 col-md-3">
						<a href="itemDetail?iid=43"><img
							style="width: 250px; height: 250px" id="r1"
							src=http://7xn0yn.com1.z0.glb.clouddn.com/1444218753371.jpg?imageView2/1/w/250/h/250/q/70/format/jpg
							alt="图片加载中..." class="img-thumbnail"></a> <strong>￥
							28 </strong> <strong class="s1">销量：32 </strong><br>
						<p>小银鱼</p>
					</div>
	
	</div>



	<!-- 所有商品 -->
	<h2 style="color: #0070C0; margin-left: 20px;font-family:微软雅黑">商品列表:${fn:length(itemList)}条</h2>
	<hr>



	<!-- 无商品的情况 -->
	<c:if test="${empty  itemList }">
		<h3 class="info">没有找到你要的商品，换个方式找找看？</h3>
	</c:if>

	<!-- 有数据的情况 -->
	<c:if test="${not empty  itemList }">
		<div class="container" style="width:1100px !important;">
			<div class="row">

				<c:forEach items="${itemList }" var="i" varStatus="num">
					<div class="col-xs-3 col-md-3">
						<a href="itemDetail?iid=${i.item_id }"><img
							style="width: 250px; height: 250px" id="r1"
							src=${i.headPic}?imageView2/1/w/250/h/250/q/70/format/jpg
							alt="图片加载中..." class="img-thumbnail"></a> <strong>￥
							${i.price } </strong> <strong class="s1">销量：${i.sales } </strong><br>
						<p>${i.name }</p>
					</div>
				</c:forEach>

			</div>
		</div>
	</c:if>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- 使用包含子页面的方法 -->
	<jsp:include page="sub_footer.jsp" />


	<br>
</body>
</html>