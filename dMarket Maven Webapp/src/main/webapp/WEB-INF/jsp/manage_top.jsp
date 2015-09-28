<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
   <title>登陆界面</title>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>

 <BODY>
    <nav class="navbar navbar-inverse navbar-fixed-top" >
      <div class="container-fluid">
        <div class="navbar-header">
          
          <a class="navbar-brand" href="#">商品信息</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li id="managerLogin"><a  target="_blank" href="login.html">登录</a></li>
            <li id="quitBtn"><a href="#">退出</a></li>       
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
			<button id="searchBox" type="submit" class="btn btn-default"  onclick="javascript:location.href='searchServlet'" href="manage.html" >搜索</button>
          </form>
        </div>
      </div>
    </nav>
 </BODY>
</HTML>