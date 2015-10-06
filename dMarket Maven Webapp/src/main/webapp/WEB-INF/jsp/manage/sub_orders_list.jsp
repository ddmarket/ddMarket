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
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,member-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />


<%@include file="rs_js_css_import.html"%>

<title>订单管理</title>
</head>
<body>
	<div class="pd-20">
		<div class="text-c">
			<input type="text" class="input-text" style="width:250px"
				placeholder="输入会员名称" name="name">
			<button type="submit" class="btn btn-success radius" name="">
				<i class="Hui-iconfont">&#xe665;</i> 检索顶大
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"> <a href="javascript:;""
				class="btn btn-danger radius"> <i class="Hui-iconfont">&#xe6e2;</i>
					批量删除
			</a>
			</span> <span class="r">共有订单记录：<strong>${fn:length(orderList)}</strong>条
			</span>
		</div>
		<div class="mt-20">
			<table
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="40"><input type="checkbox" name="" value=""></th>
						<th width="50">订单号</th>
						<th width="50">用户编号</th>
						<th width="50">订单状态</th>
						<th width="300">物流信息</th>
						<th width="300">订单时间</th>
						<th width="50">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="o" items="${orderList }">
						<tr class="text-c">
							<td><input type="checkbox" value="1" name=""></td>
							<td id="oid">${o.order_id }</td>
							<td>${o.user_id }</td>
							<td>${o.orderstates }</td>
							<td>${o.expressinfo }</td>
							<td>${o.ordertime }</td>
							<td class="td-manage"><a title="删除" href="javascript:;"
								class="ml-5" style="text-decoration:none"> <i
									class="Hui-iconfont">&#xe6e2;</i>
							</a></td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<form id="opForm" method="GET"></form>
	<script type="text/javascript">
		$(function() {
			$('.table-sort').dataTable({
				"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
				"bStateSave" : true,//状态保存
				"aoColumnDefs" : [
				//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
				{
					"orderable" : false,
					"aTargets" : [ 0, 3, 6 ]
				} // 制定列不参与排序
				]
			});
			$('.table-sort tbody').on('click', 'tr', function() {
				if ($(this).hasClass('selected')) {
					$(this).removeClass('selected');
				} else {
					table.$('tr.selected').removeClass('selected');
					$(this).addClass('selected');
				}
			});

		});
	</script>
</body>
</html>