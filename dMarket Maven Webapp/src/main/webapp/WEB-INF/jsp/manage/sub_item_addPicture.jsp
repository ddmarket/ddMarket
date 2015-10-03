<%@page import="com.dingdong.util.QiniuStore"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>上传图片</title>
</head>
<body>
	<form id="addPicture" action="addPicture" method="post"
		enctype="multipart/form-data">
		<fieldset>
			<!-- File Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="picture">商品图片</label>
				<div class="col-md-4">
					<input id="picture" name="picture" class="input-file" type="file">
				</div>
			</div>

			<!-- Button -->
			<div class="form-group">

				<div class="col-md-4"></div>
				<div class="col-md-4">
					<button class="btn btn-primary">上传</button>
				</div>
			</div>
		</fieldset>
	</form>
</body>
</html>