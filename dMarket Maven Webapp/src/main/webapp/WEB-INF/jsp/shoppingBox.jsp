<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
   <title>叮咚（DD.com)-购物车</title>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!--  <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <script src="bootstrap/jquery.min.js"></script>
   <script src="bootstrap/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="jqueryQuantity/js/payfor.js"></script>
   <style>
    .btn{}
   </style>
   <style>
.btn1{margin-top:20;background-color:#F52F19;border-color:#F52F19;color:#fff;width: 55px; height: 30px;border-radius: 3px;}
.btn2{border:0;color:#337AB7;}
.btn3{background-color:#ACA2A2;border-color:#ACA2A2;color:#000;}
</style>
</head>

<body>
  <!-- 引入顶部个人状态栏 -->
	<jsp:include page="sub_header.jsp"></jsp:include>

<!-- logo和搜索框 -->
<div class="container">
  <div class="row">
    <div class="col-xs-6 col-md-6 sidebar"><a href="main.html"><img src="image/logo.png"></a>
    </div>
    <br><br>
    <div class="col-xs-6 col-md-6">
      <form action="#" method="">
      <div class="input-group">
        <input id="searchGood" type="text" class="form-control" placeholder="Search for..." >
         <span class="input-group-btn">
         <button id="searchBtn" class="btn btn-primary" type="button">搜索</button>
         </span>
      </div><!-- /input-group -->
      </form>
    </div><!-- /.col-lg-6 -->
  </div>
</div>
 <br><br>

<div class="container" style="width: 1100px">
  <div class="row">
    <div class="col-xs-6 col-md-6"><p style="color: #000;margin-left:20px;margin-top:0;font-family:宋体;font-size:30px"><strong>全部商品</strong></p>
    </div>
    <div class="col-xs-5 col-md-5"><p style="color: #000;margin-bottom:0;float:right;font-family:宋体;font-size:20px"><sub>已选商品：￥</sub><!-- 商品总价 --> </p></div>
    <div class="col-xs-1 col-md-1"><a href="account.jsp"><button id="accountBtn" class="btn1" type="button">结算</button></a></div>
    </div>
  </div><hr>
</div>

<div class="container" style="width: 1100px">
  <div class="row">
    <div class="col-xs-2 col-md-2" style="margin-top:25px"><p></p></div>
    <div class="col-xs-2 col-md-3" style="margin-top:25px"><p>商品信息</p></div>
    <div class="col-xs-2 col-md-1" style="margin-top:25px"><p>单价（元）</p></div>
    <div class="col-xs-2 col-md-2" style="margin-top:25px"><p>数量</p></div>
    <div class="col-xs-2 col-md-2" style="margin-top:25px"><p>金额（元）</p></div>
    <div class="col-xs-2 col-md-2" style="margin-top:25px"><p>操作</p></div>
  </div>
</div>

<div id="orderInfo" class="container" style="width: 1100px !important;background-color:#E5E5E5;height:100px;">
  <div class="row">
    <div class="col-xs-2 col-md-2" style="margin-top:25px"><a href="#<!-- 商品信息页面 -->"><input id="checkBox" type="checkbox"><img src="..."></a></div><!-- 商品图片 -->
    <div class="col-xs-2 col-md-3" style="margin-top:25px"><a href="#<!-- 商品信息页面 -->">莫代尔长裙<!-- 商品名称 --></a></div>
    <div class="col-xs-2 col-md-1" style="margin-top:25px"><strong id="price_item_1">100<!-- 商品价格 --></strong><!-- 商品价格 --></div>
    <div class="f_l add_chose col-xs-2 col-md-2" style="margin-top:25px"><a class="reduce" onClick="setAmount.reduce('#qty_item_1')" href="javascript:void(0)">    -</a>
      <input id="qty_item_1" type="text" name="qty_item_1" value="1" onKeyUp="setAmount.modify('#qty_item_1')" class="text" style="width:60px;"/>
      <a class="add" onClick="setAmount.add('#qty_item_1')" href="javascript:void(0)">+</a>
      <!-- 商品数量，但是默认数量是之前选中的 --></div>
    <div class="f_l buy col-xs-2 col-md-2" style="margin-top:25px"><span class="total-font" id="total_item_1"></span>
      <input id="total_price" type="hidden" name="total_price" value="" /><!-- 总金额 --></div>
      <!-- 数量id="qty_item1",总价id="total_price" -->
    <div class="col-xs-4 col-md-2" style="margin-top:25px"><button id="delete2Btn" class="btn2" type="button">删除</button></div>
  </div>
</div>
<hr>

<form action="#">
<div class="container" style="width: 1100px;background-color:#ACA2A2;height:80px">
  <div class="row">
    <div class="col-xs-2 col-md-1" style="margin-top:25px"><input id="checkAll" type="checkbox">全选</div>
    <div class="col-xs-2 col-md-5" style="margin-top:25px"><button id="deleteallBtn" class="btn3" type="button">全部删除</button></div>
    <div class="col-xs-2 col-md-2" style="margin-top:25px"><p>已选商品#件</p></div><!-- 商品件数 -->
    <div class="col-xs-2 col-md-2" style="margin-top:25px"><p>合计：￥</p></div>
    <div class="col-xs-2 col-md-2" style="margin-top:25px"><a href="account.jsp"><button id="accountBtn" class="btn1" type="button">结算</button></a></div>
  </div>
</div>
</form>
<br><br>

<!-- 使用包含子页面的方法 -->
	<jsp:include page="sub_footer.jsp" />
<br> 
</body>
</html>    