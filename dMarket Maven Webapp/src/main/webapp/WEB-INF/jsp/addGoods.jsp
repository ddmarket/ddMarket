<!DOCTYPE html>
<html lang="zh-CN">
<head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="bootstrap/jquery.min.js"></script>
   <script src="bootstrap/js/bootstrap.min.js"></script>
   <title>商品信息修改</title>
   <style>
      .alter{font-size: 20px;margin-bottom: 10px;margin-left: 250px}
      li {list-style-type:none;}
      .btnManage{color:#337AB7;background-color: #B6CFF7;border-color: #B6CFF7;border-radius: 3px;font-size:25px}
      input{border: 0px;width: 200px}
   </style>
	
</head>

 <body>
   <h1 align="center">请输入商品详细信息</h1>
   <div>
   <form action="#" method="post">
   <div class="alter"><hr>
       <ul>            
           <li>品类编号：<span><input type="text" name="addNumber" placeholder="请输入品类编号"></span>
           <li>商品名称：<span><input type="text" name="addName" placeholder="请输入商品名称"></span>
           <li>商品品牌：<span><input type="text" name="addBrand" placeholder="请输入商品品牌"></span>
           <li>所在仓库：<span><input type="text" name="addStore" placeholder="请输入所在仓库"></span>
           <li>商品单价：<span><input type="text" name="addPrice" placeholder="请输入商品单价"></span>
           <li>商品库存：<span><input type="text" name="addStock" placeholder="请输入商品库存"></span>
           <li>商品销量：<span>0</span>
           <li>分类ID ：<span><input type="text" name="addKind" placeholder="请输入分类ID"></span>
           <li>是否推荐：<span><input type="text" name="addRec"placeholder="请输入是否推荐（0/1）"></span>
           <li>商品简介：<span><input type="text" name="addSummary" placeholder="请输入商品简介"></span>
       </ul>
    </div>
    <div align="center">
       <button id="preserve2Btn" type="submit" class="btnManage">保存</button>
       <button id="cancel2Btn" type="reset" class="btnManage">重置</button>
    </div> 
  </form>
    </div>
</body>
</html>