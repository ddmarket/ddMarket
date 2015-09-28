<!DOCTYPE html>
<html lang="zh-CN">
<head>
   <title>叮咚（DD.com)-结算/title>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!--  <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <script src="bootstrap/jquery.min.js"></script>
   <script src="bootstrap/js/bootstrap.min.js"></script>
   <style>
      .btn1{margin-top:20;background-color:#F52F19;border-color:#F52F19;color:#fff;width: 85px; height: 50px;border-radius: 3px; float: right;}
      .btn2{border:0;color:#337AB7;}
      .btn3{background-color:#ACA2A2;border-color:#ACA2A2;color:#000;}
      .text1{width: 500px}
      .s1{color: red;}
      .a1{float: right;margin-top: 15px;margin-right: 20px}
</style>
</head>

<body>
<div>
   <nav class="navbar navbar-inverse">
        <div class="navbar-collapse collapse" role="navigation">
          <ul class="nav navbar-nav navbar-right">
            <li id="userLogin"><a href="#" target="_blank" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'v3doc'])">您好，请登录</a></li>
            <li id="freeRegister"><a href="#" target="_blank" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'v4doc'])">免费注册</a></li>
            <li id="myOrder"><a href="#" target="_blank" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'less'])">我的订单</a></li>
            <li id="myInfo"><a href="#" target="_blank" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'jquery'])">我的信息</a></li>
            <li id="myCart"><a href="#" target="_blank" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'expo'])">我的购物车</a></li>
        </div>
   </nav>
</div>

<div class="col-xs-6 col-md-10 navbar-right" ><a href="main.html"><img src="image/logo.png"></a>
    </div>

<div class="container" style="width: 1100px !important;">
      <div class="row">
        <div class="col-xs-1 col-md-1" style="background-color:#fff;height:430px;">
        </div>
         <div class="col-xs-10 col-md-10">
            <div>
               <strong>填写并核对订单信息</strong><hr>
            </div>

            <div><strong>收货人信息<span>
                  <!-- 按钮触发模态框 -->
         <button class="btn2" data-toggle="modal" data-target="#myModal" style="float:right;">新增收货地址</button>
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                   <strong class="s1">&nbsp;&nbsp;新增收货地址</strong><hr>
                   <form>
                   &nbsp;&nbsp;详细地址：<input id="address" type="text" class="text1" required ><br><br>
                   &nbsp;&nbsp;电话号码：<input id="phoneNumber" type="text"><br><br>
                    &nbsp;&nbsp;收货人&nbsp;&nbsp;&nbsp;&nbsp;：<input id="name" type="text"><br><br><br>
                     <div class="modal-footer">
                      <button id="closeBtn" type="button" class="btn btn-default"  data-dismiss="modal">关闭</button>
                      <button id="preserveBtn2" type="submit" class="btn btn-primary">保存</button>
                      </form>
                     </div>
                   </div><!-- /.modal-content -->
               </div><!-- /.modal-dialog -->
            </div><!-- /.modal --></span></strong><br><br>
          </div>

            <div>
               <input type="radio">#  <br>
               <input type="radio">#
            </div>
            <br><br><br><br>
            <div>
               <strong>确认订单信息</strong>
            </div>
           <div class="container" style="width: 980px">
             <div class="row">
               <div class="col-xs-2 col-md-3" style="margin-top:25px"><p></p></div>
               <div class="col-xs-2 col-md-3" style="margin-top:25px"><p>商品信息</p></div>
               <div class="col-xs-2 col-md-2" style="margin-top:25px"><p>单价（元）</p></div>
               <div class="col-xs-2 col-md-2" style="margin-top:25px"><p>数量</p></div>
               <div class="col-xs-2 col-md-2" style="margin-top:25px"><p>小计（元）</p></div> 
             </div>
           </div>

          <div id="orderConfirm" class="container" style="width:980px !important;background-color:#E5E5E5;height:100px;">
              <div class="row">
                 <div class="col-xs-2 col-md-3" style="margin-top:25px"><a href="#"><img src="..."></a><!-- 商品信息页面 --></div><!-- 商品图片 -->
                 <div class="col-xs-2 col-md-3" style="margin-top:25px"><a href="#">莫代尔长裙<!-- 商品名称 --></a></div>
                 <div class="col-xs-2 col-md-2" style="margin-top:25px"><strong id="price_item_1">100<!-- 商品价格 --></strong><!-- 商品价格 --></div>
                 <div class="col-xs-2 col-md-2" style="margin-top:25px"><!-- 商品数量，但是默认数量是之前选中的 --></div>
                 <div class="col-xs-2 col-md-2" style="margin-top:25px"><!-- 小计 --><!-- 数量id="qty_item1",总价id="total_price" -->
                 </div>
              </div><hr>
          </div>

            <div>
               <button id="accountBtn" class="btn1" type="button">提交订单</button>
              <a href="shoppingBox.html" class="a1">返回购物车</a><a href="pay.html"></a>
            </div>

     </div>

     <div class="col-xs-1 col-md-1" style="background-color:#fff;height:430px;">
     </div>
  </div>
</div>
<br><br>

<!-- 使用包含子页面的方法 -->
	<jsp:include page="sub_footer.jsp" />
<br> 
</body>
</html>