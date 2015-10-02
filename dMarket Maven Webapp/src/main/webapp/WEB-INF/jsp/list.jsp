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





	<div class="col-md-6 col-md-offset-5" style="width:500px !important;">
		<form action="#" method="post"></form>
		<div class="input-group">
			<input id="searchGood" type="text" class="form-control"
				placeholder="Search for..."> <span class="input-group-btn">
				<button id="searchBtn" class="btn btn-primary" type="button">搜索</button>
			</span>
		</div>
		</form>
	</div>
	<!-- /.col-lg-6 -->
	<br>
	<br>

	<!-- 热销推荐 -->
	<h2 style="color: #0070C0; margin-left: 20px;font-family:华文行楷">热销推荐</h2>
	<hr>
	<div class="container" style="width:1100px !important;">
		<div class="row">
			<div class="col-xs-3 col-md-3">
				<a href="goodsInfo.jsp"><img id="r1" src="image/c1.png"
					alt="..." class="img-thumbnail"></a> <strong>￥280.00 </strong><strong
					class="s1">销量：500</strong><br> <a href="goodsInfo.jsp">润帛2015新款
					秋冬季韩国黑色羊毛围巾披肩女纯色韩版两用超长</a>
			</div>
			<div class="col-xs-3 col-md-3">
				<a href="goodsInfo.jsp"><img id="r2" src="image/c2.png"
					alt="..." class="img-thumbnail"></a> <strong>￥280.00 </strong><strong
					class="s1">销量：500</strong><br> <a href="goodsInfo.jsp">润帛2015新款
					秋冬季韩国黑色羊毛围巾披肩女纯色韩版两用超长</a>
			</div>
			<div class="col-xs-3 col-md-3 d1">
				<a href="goodsInfo.jsp"><img id="r3" src="image/c3.png"
					alt="..." class="img-thumbnail"></a> <strong>￥280.00 </strong><strong
					class="s1">销量：500</strong><br> <a href="goodsInfo.jsp">润帛2015新款
					秋冬季韩国黑色羊毛围巾披肩女纯色韩版两用超长</a>
			</div>
			<div class="col-xs-3 col-md-3">
				<a href="goodsInfo.jsp"><img id="r4" src="image/c4.png"
					alt="..." class="img-thumbnail"></a> <strong>￥280.00 </strong><strong
					class="s1">销量：500</strong><br> <a href="goodsInfo.jsp">润帛2015新款
					秋冬季韩国黑色羊毛围巾披肩女纯色韩版两用超长</a>
			</div>
		</div>
	</div>



	<!-- 所有商品 -->
	<h2 style="color: #0070C0; margin-left: 20px;font-family:华文行楷">搜索结果:${fn:length(itemList)}条</h2>
	<hr>



	<!-- 无商品的情况 -->
	<c:if test="${empty  itemList }">
		<h3 class="info">没有找到你要的商品，换个方式找找看？</h3>
	</c:if>

	<!-- 有数据的情况 -->
	<c:if test="${not empty  itemList }">
		<div class="container" style="width:1100px !important;">
			<div class="row" >
				<c:forEach items="${itemList }" var="i" varStatus="num">
					<div class="col-xs-3 col-md-3">
						<a href="itemDetail?iid=${i.item_id }"><img id="r1" src="image/loginBackground.png" alt="图片加载中..."
							class="img-thumbnail"></a> <strong>￥ ${i.price } </strong> <strong
							class="s1">销量：${i.sales } </strong><br> <p>${i.name }</p>
					</div>
					
 				</c:forEach>
			</div>
		</div>
	</c:if>


	<nav style="text-align: center">
		<ul class="pagination" style="width:400px !important;">
			<li id="pre2"><a href="#">&laquo;</a></li>
			<li id="pageOne2"><a href="#">1</a></li>
			<li id="pageTwo2"><a href="#">2</a></li>
			<li id="pagethree2"><a href="#">3</a></li>
			<li id="pageFour2"><a href="#">4</a></li>
			<li id="pageFive2"><a href="#">5</a></li>
			<li id="next2"><a href="#">&raquo;</a></li>
		</ul>
	</nav>


	<!-- 使用包含子页面的方法 -->
	<jsp:include page="sub_footer.jsp" />


	<br>
</body>
</html>