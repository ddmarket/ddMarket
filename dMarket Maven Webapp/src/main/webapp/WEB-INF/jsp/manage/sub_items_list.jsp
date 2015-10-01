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

<%@include file="rs_js_css_import.html" %>
	
<title>商品管理</title>
</head>
<body>
	<div class="pd-20">
		<div class="text-c">
			<input type="text" class="input-text" style="width:250px"
				placeholder="输入商品名称" name="name">
			<button type="submit" class="btn btn-success radius" name="">
				<i class="Hui-iconfont">&#xe665;</i> 检索商品
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"> <a href="javascript:;" onclick="datadel()"
				class="btn btn-danger radius"> <i class="Hui-iconfont">&#xe6e2;</i>批量删除
			</a>
			</span> <span class="r">共有商品记录：<strong>${fn:length(itemList)}</strong>条
			</span>
		</div>

		<div class="mt-20">
			<table
				class="table table-border table-bordered table-bg table-hover table-sort">
				<thead>
					<tr class="text-c">
						<th width="40"><input name="" type="checkbox" value=""></th>
						<th width="40">产品ID</th>
						<th width="100">产品名称</th>
						<th width="40">品牌</th>
						<th width="40">分类ID</th>
						<th 		  >描述</th>
						<th width="50">单价</th>
						<th width="100">仓库</th>
						<th width="100">库存</th>
						<th width="60"> 销量</th>
						<th width="30"> 推荐?</th>
						<th width="100">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="i" items="${itemList }">
						<tr class="text-c va-m">
							<td><input name="" type="checkbox" value=""></td>
							<td>${i.item_id } </td>
							<td>${i.name } </td>
							<td class="text-l">${i.brand } </td>
							<td class="text-l">${i.classified_id }</td>
							<td class="text">${i.introduction }</td>
							<td class="price">${i.price }</td>
							<td class="text">${i.repertory }</td>
							<td class="text">${i.instock }</td>
							<td class="text">${i.sales }</td>
							<td class="td-status">
								<span	class="label label-success radius">	${i.isrecommend }</span>
							</td>

							<td class="td-status"><span
								class="label label-success radius"> 管理商品</span></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>



	<script type="text/javascript">
		$(function() {
			$('.table-sort').dataTable({
				"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
				"bStateSave" : true,//状态保存
				"aoColumnDefs" : [
				//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
				{
					"orderable" : false,
					"aTargets" : [ 0, 8, 9 ]
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
		/*商品-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
		/*商品-查看*/
		function member_show(title, url, id, w, h) {
			layer_show(title, url, w, h);
		}
		/*商品-停用*/
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

		/*商品-启用*/
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
		/*商品-编辑*/
		function member_edit(title, url, id, w, h) {
			layer_show(title, url, w, h);
		}
		/*密码-修改*/
		function change_password(title, url, id, w, h) {
			layer_show(title, url, w, h);
		}
		/*商品-删除*/
		function member_del(obj, id) {
			layer.confirm('确认要删除吗？', function(index) {
				$(obj).parents("tr").remove();
				layer.msg('已删除!', {
					icon : 1,
					time : 1000
				});
			});
		}
	</script>
</body>
</html>