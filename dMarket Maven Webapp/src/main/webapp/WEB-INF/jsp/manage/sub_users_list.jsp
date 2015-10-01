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

<title>会员管理</title>
</head>
<body>
	<div class="pd-20">
		<div class="text-c">
			<input type="text" class="input-text" style="width:250px"
				placeholder="输入会员名称" name="name">
			<button type="submit" class="btn btn-success radius" name="">
				<i class="Hui-iconfont">&#xe665;</i> 检索会员
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"> <a href="javascript:;" onclick="datadel()"
				class="btn btn-danger radius"> <i class="Hui-iconfont">&#xe6e2;</i>
					批量删除
			</a>
			</span> <span class="r">共有会员记录：<strong>${fn:length(userList)}</strong>条
			</span>
		</div>
		<div class="mt-20">
			<table
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
						<th width="30">ID</th>
						<th width="200">会员名</th>
						<th width="300">手机</th>
						<th width="300">邮箱</th>
						<th width="50">积分</th>
						<th width="50">状态</th>
						<th width="20">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${userList }">
						<tr class="text-c">
							<td><input type="checkbox" value="1" name=""></td>
							<td id="uid">${u.user_id }</td>
							<td>${u.name }</td>
							<td>${u.telephone }</td>
							<td>${u.email }</td>
							<td>${u.credit }</td>
							<td class="td-status"><span
								class="label label-success radius">${u.status }</span></td>

							<td class="td-manage"><a title="删除" href="javascript:;"
								onclick="member_del(this,'${u.user_id }')" class="ml-5"
								style="text-decoration:none"> <i class="Hui-iconfont">&#xe6e2;</i>
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
					"aTargets" : [ 0, 3, 4, 7 ]
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
		/*会员-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
		/*会员-查看*/
		function member_show(title, url, id, w, h) {
			layer_show(title, url, w, h);
		}
		/*会员-停用*/
		function member_stop(obj, id) {
			layer
					.confirm(
							'确认要停用吗？',
							function(index) {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-defaunt radius">已停用</span>');
								$(obj).remove();
								layer.msg('已停用!', {
									icon : 5,
									time : 1000
								});
							});
		}

		/*会员-启用*/
		function member_start(obj, id) {
			layer
					.confirm(
							'确认要启用吗？',
							function(index) {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-success radius">已启用</span>');
								$(obj).remove();
								layer.msg('已启用!', {
									icon : 6,
									time : 1000
								});
							});
		}
		/*会员-编辑*/
		function member_edit(title, url, id, w, h) {
			layer_show(title, url, w, h);
		}
		/*密码-修改*/
		function change_password(title, url, id, w, h) {
			layer_show(title, url, w, h);
		}

		/*会员-删除*/
		function member_del(obj, uid) {
			layer.confirm('确认要删除吗？', function(index) {
				$("#opForm").attr("action", "deleteUser/"+uid);
				$("#opForm").submit();
				layer.msg('已删除!', {
					icon : 1,
					time : 1000
				});
			});
		}
	</script>
</body>
</html>