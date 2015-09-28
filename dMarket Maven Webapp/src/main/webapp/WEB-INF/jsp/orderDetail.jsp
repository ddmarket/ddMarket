<!DOCTYPE html>
<html lang="zh-CN">
<head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="bootstrap/jquery.min.js"></script>
   <script src="bootstrap/js/bootstrap.min.js"></script>
   <title>叮咚-订单详情</title>
   <style>
      .alter{font-size: 20px;margin-bottom: 10px;margin-left: 250px}
      li {list-style-type:none;}
      .btnManage{color:#337AB7;background-color: #B6CFF7;border-color: #B6CFF7;border-radius: 3px;font-size:25px}
   </style>
</head>

 <body> 
    <h1 align="center">订单详细信息</h1>
   <div>
   <form action="#" method="post">
   <div class="alter"><hr>
       <ul>            
           <li>品类编号：<span id="addNumber">#</span>
           <li>商品名称：<span id="addName">#</span>
           <li>商品品牌：<span id="addBrand">#</span>
           <li>所在仓库：<span id="addStore">#</span>
           <li>商品单价：<span id="addPrice">#</span>
           <li>商品库存：<span id="addStock">#</span>
           <li>商品销量：<span>#</span>
           <li>分类  ID ：<span id="addKind">#</span>
           <li>是否推荐：<span id="addRec">#</span>
           <li>商品简介：<span id="addSummary">#</span>
       </ul>
    </div>
     <div align="center">
       <a href="searchOrder.html"><button id="cancelBtn" type="button" class="btnManage" >返回</button></a>
    </div> 
  </form>
    </div>
   

</body>
</html>