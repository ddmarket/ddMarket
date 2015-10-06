<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

<%@include file="rs_js_css_import.html"%>

<title>叮咚超市后台管理系统</title>
</head>
<body>
	<header class="Hui-header cl">
		<a class="Hui-logo l" title="H-ui.admin v2.3" href="index">叮咚</a> <a
			class="Hui-logo-m l" href="#" title="H-ui.admin">***</a> <span
			class="Hui-subtitle l">--后台管理系统</span>
		<ul class="Hui-userbar">
			<li>${ admin.name}</li>
			<li class="dropDown dropDown_hover"><a href="#"
				class="dropDown_A">管理员</a>
				<ul class="dropDown-menu radius box-shadow">
					<li><a href="#">*退出</a></li>
				</ul></li>


			<li id="Hui-skin" class="dropDown right dropDown_hover"><a
				href="javascript:;" title="换肤"><i class="Hui-iconfont"
					style="font-size:18px">&#xe62a;</i></a>
				<ul class="dropDown-menu radius box-shadow">
					<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
					<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
					<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
					<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
					<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
					<li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>
				</ul></li>
		</ul>
		<a aria-hidden="false" class="Hui-nav-toggle" href="#"></a>
	</header>
	<aside class="Hui-aside">
		<input runat="server" id="divScrollValue" type="hidden" value="" />
		<div class="menu_dropdown bk_2">
			<dl id="menu-product">
				<dt>
					<i class="Hui-iconfont">&#xe620;</i> 商品管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="sub_items_list" href="javascript:void(0)">查看商品</a></li>
					</ul>

					<ul>
						<li><a _href="sub_item_add" href="javascript:void(0)">新品上架</a></li>
					</ul>


				</dd>
			</dl>
			<dl id="menu-comments">
				<dt>
					<i class="Hui-iconfont">&#xe622;</i> *评论管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="feedback-list.html" href="javascript:void(0)">*查看评论</a></li>
					</ul>

					<ul>
						<li><a _href="feedback-list.html" href="javascript:void(0)">*管理评论</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-member">
				<dt>
					<i class="Hui-iconfont">&#xe60d;</i>会员管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="sub_users_list" href="javascript:;">所有会员</a></li>
					</ul>

					<ul>
						<li><a _href="sub_users_list" href="javascript:;">*会员积分</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-member">
				<dt>
					<i class="Hui-iconfont">&#xe627;</i> 订单管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="sub_orders_list" href="javascript:;">所有订单</a></li>
					</ul>

					<ul>
						<li><a _href="order-list.html" href="javascript:;">发货管理</a></li>
					</ul>
					<ul>
						<li><a _href="order-list.html" href="javascript:;">售后服务</a></li>
					</ul>

				</dd>
			</dl>
		</div>
	</aside>
	<div class="dislpayArrow">
		<a class="pngfix" href="javascript:void(0);"
			onClick="displaynavbar(this)"></a>
	</div>
	<section class="Hui-article-box">
		<div id="Hui-tabNav" class="Hui-tabNav">
			<div class="Hui-tabNav-wp">
				<ul id="min_title_list" class="acrossTab cl">
					<li class="active"><span title="我的桌面" data-href="">欢迎进入叮咚超市后台管理系统</span><em></em></li>
				</ul>
			</div>
			<div class="Hui-tabNav-more btn-group">
				<a id="js-tabNav-prev" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a
					id="js-tabNav-next" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a>
			</div>
		</div>
		<div id="iframe_box" class="Hui-article">
			<div class="show_iframe">
				<div style="display:none" class="loading"></div>
				<!-- <iframe scrolling="yes" frameborder="0" src="houselease/menu/framework/index"></iframe> -->
			</div>
		</div>
	</section>

	<script type="text/javascript">
		/*资讯-添加*/
		function article_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*图片-添加*/
		function picture_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*产品-添加*/
		function product_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*用户-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
	</script>
</body>
</html>