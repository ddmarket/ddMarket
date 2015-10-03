<%@page import="com.dingdong.util.QiniuStore"%>
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
					<div id="province" class="formControls col-4"></div>
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
							<option selected="selected" value="0">不推荐</option>
						</select>
					</div>
				</div>



				<div class="row cl">
					<label class="form-label col-2">商品图片：</label>
					<div id="container">
						<input value="上传" type="file" class="btn btn-default btn-lg " id="pickfiles" href="#">
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
					<button id="btn_upload" class="btn btn-primary radius"
						type="submit">
						<i class="Hui-iconfont">&#xe632;</i> 保存
					</button>

					<button onClick="layer_close();" class="btn btn-default radius"
						type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
				</div>
			</div>
	</div>
	</form>







	<script type="text/javascript" src="js/qiniu.js"></script>
	<script type="text/javascript" src="js/plupload.full.min.js"></script>


	<script type="text/javascript">
		$(function() {
			$("#province").ProvinceCity()
		});
	</script>


	<script type="text/javascript">
	var uploader = Qiniu.uploader({
			runtimes : 'html5,flash,html4', //上传模式,依次退化
			browse_button : 'pickfiles', //上传选择的点选按钮，**必需**
			uptoken_url : '/<%= QiniuStore.getUpToken0() %>',
			//Ajax请求upToken的Url，**强烈建议设置**（服务端提供）
			// uptoken : '<Your upload token>',
			//若未指定uptoken_url,则必须指定 uptoken ,uptoken由其他程序生成
			// unique_names: true,
			// 默认 false，key为文件名。若开启该选项，SDK会为每个文件自动生成key（文件名）
			// save_key: true,
			// 默认 false。若在服务端生成uptoken的上传策略中指定了 `sava_key`，则开启，SDK在前端将不对key进行任何处理
			domain : 'http://7xn0yn.com1.z0.glb.clouddn.com /',
			//bucket 域名，下载资源时用到，**必需**
			container : 'container', //上传区域DOM ID，默认是browser_button的父元素，
			max_file_size : '100mb', //最大文件体积限制
			flash_swf_url : 'js/plupload/Moxie.swf', //引入flash,相对路径
			max_retries : 3, //上传失败最大重试次数
			dragdrop : true, //开启可拖曳上传
			drop_element : 'container', //拖曳上传区域元素的ID，拖曳文件或文件夹后可触发上传
			chunk_size : '4mb', //分块上传时，每片的体积
			auto_start : true, //选择文件后自动上传，若关闭需要自己绑定事件触发上传
			init : {
				'FilesAdded' : function(up, files) {
					plupload.each(files, function(file) {
						// 文件添加进队列后,处理相关的事情
					});
				},
				'BeforeUpload' : function(up, file) {
					// 每个文件上传前,处理相关的事情
				},
				'UploadProgress' : function(up, file) {
					// 每个文件上传时,处理相关的事情
				},
				'FileUploaded' : function(up, file, info) {
					// 每个文件上传成功后,处理相关的事情
					// 其中 info 是文件上传成功后，服务端返回的json，形式如
					// {
					//    "hash": "Fh8xVqod2MQ1mocfI4S4KpRL6D98",
					//    "key": "gogopher.jpg"
					//  }
					// 参考http://developer.qiniu.com/docs/v6/api/overview/up/response/simple-response.html
					// var domain = up.getOption('domain');
					// var res = parseJSON(info);
					// var sourceLink = domain + res.key; 获取上传成功后的文件的Url
				},
				'Error' : function(up, err, errTip) {
					//上传出错时,处理相关的事情
				},
				'UploadComplete' : function() {
					//队列文件处理完毕后,处理相关的事情
				},
				'Key' : function(up, file) {
					// 若想在前端对每个文件的key进行个性化处理，可以配置该函数
					// 该配置必须要在 unique_names: false , save_key: false 时才生效
					var key = "";
					// do something with key here
					return key
				}
			}
		});
	
		
	</script>

</body>
</html>