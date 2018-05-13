<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="Dashboard">
		<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
		<title>设备管理</title>
		<%-- Bootstrap core CSS --%>
   		<link href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css" rel="stylesheet">
		<%--external css--%>
		<link href="<%=basePath%>/style/ibooks/font-awesome/css/font-awesome.css" rel="stylesheet"/>
		
		<%-- Custom styles for this template --%>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/extend_asset_css/style.css"/>
   	 	<link href="<%=basePath%>/style/ibooks/css/ext_assets_css/style-responsive.css" rel="stylesheet">
		
		<%--ibooks styles for this template--%>
		<link href="<%=basePath%>/style/ibooks/css/style.css" rel="stylesheet">
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery-1.8.3.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
		<script class="include" type="text/javascript" src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.dcjqaccordion.2.7.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.scrollTo.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.nicescroll.js" type="text/javascript"></script>
		<%--common script for all pages--%>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/common-scripts.js"></script>
		<script src="<%=basePath%>/ibooks/js/jquery/jqueryJSONToDate" type="text/javascript"></script>
		
		<!--css和js脚本写在外面  -->
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/addpage_css/equipment.css" />
		<script src="<%=basePath%>/style/ibooks/js/addpage_js/equipment.js"></script>

</head>
<body>
	<%-- 导入头部 --%>
	<%@ include file="/WEB-INF/page/common/header.jsp"%>
	<%-- 导入菜单 --%>
	<%@ include file="/WEB-INF/page/common/menus.jsp"%>
	
	<!-- main页面 -->
	<!-- **********************************************************************************************************************************************************
	MAIN CONTENT
	*********************************************************************************************************************************************************** -->
	<!--main content start-->
	<section id="main-content" class="title">
	<section>
	<nav style="height: 50px;width: 100%;" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	    <div class="container-fluid" >
	        <!--向左对齐-->
			<b class="navbar-text navbar-left glyphicon "><a href="${pageContext.request.contextPath}/l_system/librarian/view">首页</a>>>借还系统后台>>设备管理</b>
	        <!--向右对齐-->
	        
	    </div>
	</nav>
	</section>
	<section style="padding-top:100px">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div class="row">
			<p class="text_one"><img src="/ibook/style/indexassets/image/设备管理.png" class="img_one">设备管理</p>
		</div>
		<div class="row space_one">
			<div class="col-xs-4 col-xs-push-5 col-sm-4 col-md-4 col-md-push-6 col-lg-4">
				<input type="search" class="form-control" id="search" placeholder="输入设备号查询" autofocus>
			</div>
			<div class="col-xs-2 col-xs-push-5 col-sm-2 col-md-2 col-md-push-6 col-lg-2">
				<input type="button" class="btn btn-success" value="搜索">
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-11 col-md-11 col-lg-11 space">
				<table border="0" class="table" style="table-layout: fixed;margin:0 auto;">
					<colgroup>
						<col style="width: 15%;"/>
						<col style="width: 15%;"/>
						<col style="width: 15%;"/>
						<col style="width: 15%;"/>
						<col style="width: 15%;"/>
						<col style="width: 10%;"/>
						<col style="width: 15%;"/>
					</colgroup>
					<thead>
					<tr>
						<td class="over">设备编号</td>
						<td class="over">书籍ip</td>
						<td class="over">书籍设备端口</td>
						<td class="over">书架设备状态</td>
						<td class="over">书架条形码</td>
						<td class="over">架位号</td>
						<td class="over">操作</td>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="over">sfdsfgsdgfdgdfgdfgdgdfgdfhgfhgjgjgh</td>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td><a href="#">修改</a>/<a href="#">删除</a></td>
					</tr>
					<tr>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td><a href="#">修改</a>/<a href="#">删除</a></td>
					</tr>
					<tr>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td><a href="#">修改</a>/<a href="#">删除</a></td>
					</tr>
					<tr>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td class="over"></td>
						<td><a href="#">修改</a>/<a href="#">删除</a></td>
					</tr>
				</tbody>	
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-sm-push-4 col-md-6 col-lg-6">
			  <ul class="pagination">
			    <li class="disabled"><a href="#">&laquo;</a></li>
			    <li ><a href="#">1</a></li>
			    <li ><a href="#">2</a></li>
			    <li ><a href="#">3</a></li>
			    <li ><a href="#">4</a></li>
			    <li ><a href="#">5</a></li>
			    <li ><a href="#">&raquo;</a></li>
			  </ul>
			</div>
		</div>
	
	</div>
	</section>
	</section>

</body>
</html>