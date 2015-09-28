<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="bootstrap/jquery.min.js"></script>
   <script src="bootstrap/js/bootstrap.min.js"></script>
   <script src="myjs/myjs.js"></script>
   <title>叮咚-商品信息修改</title>
   <style>
      .alter{font-size: 20px;margin-bottom: 10px;margin-left: 250px}
      li {list-style-type:none;}
      .btnManage{color:#337AB7;background-color: #B6CFF7;border-color: #B6CFF7;border-radius: 3px;font-size:25px}
   </style>
<script type="text/javascript">
		function changeContent(){
		
		 var o1 = document.getElementById("addNumber");
		 var c1 = o1.innerHTML;
		 o1.innerHTML = "<input type='text' value='" + c1 + "'/>"
		
		 var o2 = document.getElementById("addName");
		 var c2 = o2.innerHTML;
		 o2.innerHTML = "<input type='text' value='" + c2 + "'/>"
		
		 var o3 = document.getElementById("addBrand");
		 var c3 = o3.innerHTML;
		 o3.innerHTML = "<input type='text' value='" + c3 + "'/>"
		
		 var o4 = document.getElementById("addStore");
		 var c4 = o4.innerHTML;
		 o4.innerHTML = "<input type='text' value='" + c4 + "'/>"
		
		 var o5 = document.getElementById("addPrice");
		 var c5 = o5.innerHTML;
		 o5.innerHTML = "<input type='text' value='" + c5 + "'/>"
		
		 var o6 = document.getElementById("addStock");
		 var c6 = o6.innerHTML;
		 o6.innerHTML = "<input type='text' value='" + c6 + "'/>"
		
		 var o7= document.getElementById("addKind");
		 var c7 = o7.innerHTML;
		 o7.innerHTML = "<input type='text' value='" + c7 + "'/>"
		
		 var o8 = document.getElementById("addRec");
		 var c8 = o8.innerHTML;
		 o8.innerHTML = "<input type='text' value='" + c8 + "'/>"
		
		 var o9 = document.getElementById("addSummary");
		 var c9 = o9.innerHTML;
		 o9.innerHTML = "<input type='text' value='" + c9 + "'/>"
		}
		
		function delete_confirm() <!--调用方法--> 
		{ 
		event.returnValue = confirm("修改是不可恢复的，你确认要修改吗？"); 
		} 
		
		function alter_confirm() <!--调用方法--> 
		{ 
		event.returnValue = confirm("删除是不可恢复的，你确认要删除吗？"); 
		} 
		</script>
</head>

 <body> 
    <h1 align="center">商品详细信息</h1>
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
       <button id="alterBtn2" type="button" class="btnManage" onclick="changeContent()">修改</button>
       <button id="preserveBtn" type="submit" class="btnManage" onClick="alter_confirm()">保存</button>
       <button id="deleteBtn2" type="submit" class="btnManage" onClick="delete_confirm()">删除</button>
       <a href="search.html"><button id="cancelBtn" type="button" class="btnManage">返回</button></a>
    </div> 
  </form>
    </div>
   

</body>
</html>
