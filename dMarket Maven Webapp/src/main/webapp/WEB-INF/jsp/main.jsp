<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
   <title>叮咚（DD.com)</title>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <script src="bootstrap/jquery.min.js"></script>
   <script src="bootstrap/js/bootstrap.min.js"></script>
    <style type="text/css">
    .gonggao{background-color:#fff;}
    .a1{color: #FFf;}
    </style>
</head>

<body>

	<!-- 引入顶部个人状态栏 -->
	<jsp:include page="sub_header.jsp"></jsp:include>
	
	
  <div class="container" style="width: 1100px !important;">
    <div class="row">
     <div class="col-md-6">
        <a href="index"><img src="image/logo2.png"></a></div>
    <div class="col-md-6">
    
    <!-- 搜索框 -->
      <form action="#" method="get">
    <div class="input-group">
      <input id="searchGood" type="text" class="form-control" placeholder="Search for..." >
      <span class="input-group-btn">
        <button id="searchBtn" class="btn btn-primary" type="button">搜索</button>
      </span>
    </div><!-- /input-group -->
    </form>
    
  </div>
</div>
</div>

<!-- 中间div，包含3个部分 -->
 <div class="container" style="width: 1200px !important;">
      <div class="row">
        <div class="col-xs-3 col-md-3 navbar-inverser" style="color:#bbbbbb;background-color:#21528B;height:440px;">
          <ul class="nav nav-sidebar">
            <div class="dt" style="color:#bbbbbb;">&emsp;<h2>全部商品分类</h2></div>
          </ul>
            <ul class="nav nav-sidebar">
            <li id="classJy" style="color:red"><a target="_blank" href="list?classify=1" class="a1">生鲜</a></li>           
          </ul>
          <ul class="nav nav-sidebar">
            <li id="classJy"><a target="_blank" href="list" class="a1">手机、数码产品、电脑、办公</a></li>       
          </ul>
          <ul class="nav nav-sidebar">
            <li id="classJj"><a target="_blank" href="list" class="a1">家居、家装、家具、厨具</a></li>          
          </ul>    
          <ul class="nav nav-sidebar">
            <li id="classNz"><a target="_blank" href="list" class="a1">男装、女装、珠宝</a></li>          
          </ul>  
          <ul class="nav nav-sidebar">
            <li id="classMz"><a target="_blank" href="list" class="a1">美妆</a></li> 
          </ul>
          <ul class="nav nav-sidebar">
            <li id="classTs"><a target="_blank" href="list" class="a1">图书、音像</a></li>           
          </ul>
          <ul class="nav nav-sidebar">
            <li id="classYd"><a target="_blank" href="list" class="a1">运动户外</a></li>           
          </ul>
          <ul class="nav nav-sidebar">
           <li id="classMy"><a target="_blank" href="list" class="a1">母婴、玩具</a></li>          
          </ul> 
          <ul class="nav nav-sidebar">
            <li id="classSp"><a target="_blank" href="list" class="a1">食品、生鲜</a></li>
          </ul>    
				<br>  
        </div>
        
		<!-- 中间轮播栏，可以改图片，但是要先确定图片大小 -->
        <div class="col-xs-7 col-md-6 " style="background-color:#000;">
          <div id="myCarousel" class="carousel slide">
          <!-- 轮播（Carousel）指标 -->
          <ol class="carousel-indicators">
           <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
           <li data-target="#myCarousel" data-slide-to="1"></li>
           <li data-target="#myCarousel" data-slide-to="2"></li>
         </ol>   
          <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active" style="height:440px">
                <a href="list"><img id="1Sp" src="image/1.png" alt="First slide"></a>
            </div>
           <div class="item" style="height:430px">
             <a href="list"><img id="2Mz" src="image/2.png" alt="Second slide"></a>
          </div>
         <div class="item" style="height:430px">
          <a href="list"><img id="3Nz" src="image/3.png" alt="Third slide"></a>
      </div>
      </div>
         <!-- 轮播（Carousel）导航 -->
           <a class="carousel-control left" href="#myCarousel" 
             data-slide="prev">&lsaquo;</a>
        <a class="carousel-control right" href="#myCarousel" 
             data-slide="next">&rsaquo;</a>
      </div> 
    </div>

    <!-- 右边消息栏 -->
    <div class="col-xs-2 col-md-3 gonggao c3">
      <h3><strong>叮咚公告</strong></h3>
      <a href="#">叮咚钜惠，全场包邮</a><br>
      <a href="#">李克强点赞网店第一村</a><br>
      <a href="#">郭敬明现身娱乐宝“投资人”专 </a><br>
      <a href="#">马云扎堆“侃球“：为未来而战 </a><br>
      <a href="#">厦门拍卖行或因淘宝集体失业</a><br>
      <a href="#">聚划算首次挺进三沙捕鱼 </a><br>
      <a href="#">一车包裹失踪快递哥快哭了</a><br>
      <a href="#">淘宝杯网络棋牌大赛开战</a> <br>
     </div>
  </div>
 </div>

<br>
<br>
<br>
<br>

	<!-- 使用包含子页面的方法 -->
	<jsp:include page="sub_footer.jsp" />


<br> 

</body>
</html>
