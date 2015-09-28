<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
   <title>叮咚-商品名称（DD.com)</title>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!--  <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <script src="bootstrap/jquery.min.js"></script>
   <script src="bootstrap/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="jqueryQuantity/js/payfor.js"></script>
   <style type="text/css">
   .btn4{height: 50px;background-color:#DE3C2E}
   hr{ height:1px;border-top:1px solid #0066CC;}
   .c2{border-left:2px solid #0066CC;border-top:2px solid #0066CC;border-right:2px solid #0066CC;border-bottom:2px solid #0066CC;height: 400px;}
   .p1{font-size: 20px;font-family:微软雅黑;color: red;margin-top: 10px}
   .p2{font-size:16px;color: #000;margin-top: 20px;font-family:幼圆;}
   </style>

   <SCRIPT LANGUAGE="JavaScript">  
    function changeSrc(obj) {  
        obj.src = "image/ysc.png"; //改变图像地址  
    }   
</script>
</head>

<body>
	<!-- 引入顶部个人状态栏 -->
	<jsp:include page="sub_header.jsp"></jsp:include>
  
  <div class="container" style="width: 1100px !important;">
    <div class="row">
     <div class="col-md-6">
        <a href="main.html"><img src="image/logo1.png"></a></div>
    <div class="col-md-6">
      <form action="#" method="">
    <div class="input-group">
      <input id="searchGood" type="text" class="form-control" placeholder="Search for..." >
      <span class="input-group-btn">
        <button id="searchBtn" class="btn btn-primary" type="button">搜索!</button>
      </span>
    </div><!-- /input-group -->
    </form>
  </div><!-- /.col-lg-6 -->  
</div>
</div>

<div>

<div class="container-f" style="width: 1200px !important;"> 
	<div class="row">
     <hr>
		<div class="col-xs-5 col-md-5 c3">
			<img id="goodsPicture" src="image/5.png"><!-- 这里是放商品图片的 -->
		</div>

		<div class="col-xs-5 col-md-5">
			<div><h3 style="color: #000; margin-left: 20px;font-family:宋体">商品名称<!-- 商品名称 --></h3></div>
			 <div style="background-color:#C5BEBE;height:100px">
        <h3 style="color: #FB052B;margin-left: 20px;margin-bottom:25px;margin-top:25px;font-family:黑体;">叮咚价：￥
          <strong id="price_item_1"><!-- 商品价格 --></strong></h3>
          <h4 style="color: #000;margin-left: 20px;">促销信息：全场包邮</h4>
			 </div>
			 <div><p class="p1">配送至：<!-- 用户地址 --></p>	
       </div>
			 <div class="p_number">
        <div class="f_l add_chose">
         <p style="font-size:25px;color: #000;margin-top: 20px;margin-right: 50px;font-family:宋体">数量  
         <a class="reduce" onClick="setAmount.reduce('#qty_item_1')" href="javascript:void(0)">-</a>
         <input type="text" name="qty_item_1" value="1" id="qty_item_1" onKeyUp="setAmount.modify('#qty_item_1')" class="text" style="width:60px;"/>
         <a class="add" onClick="setAmount.add('#qty_item_1')" href="javascript:void(0)">
         +</a></p>
        </div> 
        <div class="f_l buy">
         总价：<span class="total-font" id="total_item_1" style="color:red"></span>
         <input type="hidden" name="total_price" id="total_price" value="" />
        </div><br>
        <div class="container">
            <div class="row">
               <div class="col-xs-2 col-md-2">
                  <button id="shoppingBtn" type="button" class="btn btn-danger btn4"><img src="image/shopping.png">加入购物车</button></div><!-- 数量id="qty_item1",总价id="total_price" -->
               <div class="col-xs-2 col-md-2"><img onclick="changeSrc(this)" src="image/dsc.png"></div><!-- 收藏，这里要判断是否已经收藏 -->
               <div class="col-xs-8 col-md-8"></div>
            </div>
        </div>
        </div>
      </div>

   <div class="col-xs-2 col-md-2 c2">
       <p class="p1">已选中的商品</p>
       <div class="container">
          <div class="row">
            <div >
            <a href="goodsInfo.html"><img src="image/c1.png" style="width:30px !important;"> &nbsp; &nbsp;冬日围巾  &nbsp;×1</a>  <!-- 调用购物车的商品信息 -->
            </div>  
          </div>
       </div>
   </div>   

  </div>
</div>

	<!-- 使用包含子页面的方法 -->
	<jsp:include page="sub_footer.jsp" />


<br> 

</body>
</html>