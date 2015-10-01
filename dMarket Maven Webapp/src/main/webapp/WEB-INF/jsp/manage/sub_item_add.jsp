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
<meta http-equiv="Cache-Control" content="no-siteapp" />


<%@include file="rs_js_css_import.html"%>
<script type="text/javascript" src="cityOption/jquery.min.js"></script>
<script type="text/javascript" src="cityOption/jquery.provincesCity.js"></script>
<script type="text/javascript" src="cityOption/provincesData.js"></script>

<title>增加商品</title>
</head>
<body>
	<div class="pd-20">
		<form action="addItem" method="post" class="form form-horizontal">
			<div>
				<div class="row cl">
					<label class="form-label col-2">商品品类：</label>
					<div class="formControls col-4">
						<select name="classified_id">
							<c:forEach items="${classifyList }" var="c">
								<option value=${c.classify_id }>${c.name }</option>
							</c:forEach>
						</select>
					</div>
					<label class="form-label col-2">商品名称：</label>
					<div class="formControls col-4">
						<input type="text" name="name" placeholder="" value=""
							class="input-text" style="width:90%">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-2">商品品牌：</label>
					<div class="formControls col-4">
						<input type="text" name="brand" placeholder="" value=""
							class="input-text" style="width:90%">
					</div>
					<label class="form-label col-2">所在仓库：</label>
					<div  id="province" class="formControls col-4"></div>
				</div>
				<div class="row cl">
					<label class="form-label col-2">商品单价：</label>
					<div class="formControls col-4">
						<input type="text" name="price" placeholder="" value=""
							class="input-text" style="width:90%"> 元
					</div>
					<label class="form-label col-2">商品库存：</label>
					<div class="formControls col-4">
						<input type="text" name="instock" placeholder="" value=""
							class="input-text" style="width:90%">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-2">商品销量：</label>
					<!-- 默认为0 -->
					<div class="formControls col-4">
						<input type="text" name="sales" placeholder="" value=""
							class="input-text" style="width:90%">
					</div>
					<label class="form-label col-2">是否推荐：</label>
					<div class="formControls col-4">
						<select name="isrecommend">
							<option value="1">推荐</option>
							<option selected="selected" value="0" >不推荐</option>
						</select>
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-2">商品简介：</label>
					<div class="formControls col-10">
						<textarea name="introduction" cols="" rows="" class="textarea"
							placeholder="说点什么...最少输入10个字符" datatype="*10-100"
							dragonfly="true" nullmsg="备注不能为空！"
							onKeyUp="textarealength(this,200)"></textarea>
						<p class="textarea-numberbar">
							<em class="textarea-length">0</em>/200
						</p>
					</div>
				</div>
			</div>

			<div class="row cl">
				<div class="col-10 col-offset-2">
					<button onClick="article_save_submit();"
						class="btn btn-primary radius" type="submit">
						<i class="Hui-iconfont">&#xe632;</i> 保存并提交审核
					</button>
					<button onClick="layer_close();" class="btn btn-default radius"
						type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
				</div>
			</div>
	</div>
	</form>
	<script type="text/javascript">
			$(function(){
			  $("#province").ProvinceCity();
			});
</script>

</body>
</html>