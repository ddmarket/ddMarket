<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
	<base href="<%=basePath%>">
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <title>left</title>
</head>
 <BODY>
   <div class="container-fluid">
      <div class="row">
        <div class="col-sm-4 col-md-3 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Overview <span class="sr-only">(current)</span></a></li>
            <li id="infoSearch"><a target="mainframe" href="<%=basePath %>SearchServlet">商品信息查询</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li id="infoAdd"><a target="mainframe" href="addGoods.html">商品信息增加</a></li>
            
          </ul>
          <ul class="nav nav-sidebar">
            <li id="infoAlter"><a target="mainframe" href="alter.html">商品信息修改</a></li>          
          </ul>        
        </div>
      </div>

    </div>
 </BODY>
</HTML>
