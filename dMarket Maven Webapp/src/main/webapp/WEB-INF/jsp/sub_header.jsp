<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.a2 {
	font-size: 30px;
	color: red;
	margin-right: 20px;
	font-family: 微软雅黑
}
</style>

<script type="text/javascript" src="js/headroom.js"></script>

<!-- 顶部个人状态栏 -->
<div id="header">
	<nav class="navbar navbar-inverse">
		<div class="navbar-collapse collapse" role="navigation">
			<div class="navbar-header">
				<a target="_blank" class="navbar-brand a2" href="index">dMarket</a>
			</div>

			<ul class="nav navbar-nav navbar-right">
				<c:if test="${empty user}">
					<li><a href="login">请先登录</a></li>
					<li><a href="register">木有账号?</a></li>
				</c:if>



				<!-- session中读取用户信息 -->
				<c:if test="${not empty user}">
					<li id="home"><a href="#">${ user.name}, 欢迎回来</a></li>
					<li id="home"><a target="_blank" href="home">个人中心</a></li>
					<li id="cart"><a target="_blank" href="submitOrder">我的购物车</a></li>
					<li id="logout"><a target="_blank" href="logout">注销登录</a></li>
				</c:if>
			</ul>
		</div>
	</nav>
</div>


