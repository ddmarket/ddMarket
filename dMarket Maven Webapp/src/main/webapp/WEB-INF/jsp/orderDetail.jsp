<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
           <li>品类编号：<span id="addNumber">03</span>
           <li>商品名称：<span id="addName">维达湿纸巾</span>
           <li>商品品牌：<span id="addBrand">维达</span>
           <li>所在仓库：<span id="addStore">湖南-长沙</span>
           <li>商品单价：<span id="addPrice">4</span>
           <li>商品库存：<span id="addStock">3253</span>
           <li>商品销量：<span>89</span>
           <li>分类  ID ：<span id="addKind">0823</span>
           <li>是否推荐：<span id="addRec">1</span>
           <li>商品简介：<span id="addSummary">维达湿纸巾超值 10片装</span>
       </ul>
    </div>
     <div align="center">
       <a href="searchOrder.html"><button id="cancelBtn" type="button" class="btnManage" >返回</button></a>
    </div> 
  </form>
    </div>
   

</body>
</html>