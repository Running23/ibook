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
		<title>发布公告</title>
		<%-- Bootstrap core CSS --%>
   		<link href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css" rel="stylesheet">
		<%--external css--%>
		<link href="<%=basePath%>/style/ibooks/font-awesome/css/font-awesome.css" rel="stylesheet"/>
		
		<%-- Custom styles for this template --%>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/extend_asset_css/style.css"/>
   	 	<link href="<%=basePath%>/style/ibooks/css/ext_assets_css/style-responsive.css" rel="stylesheet"/>
		
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
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/addpage_css/report.css" />
		<script src="<%=basePath%>/style/ibooks/js/addpage_js/report.js"></script>

</head>
<body>
 
	<!-- 导入头部 -->
	<%@ include file="/WEB-INF/page/common/header.jsp"%>
	<!-- 导入菜单 -->
	<%@ include file="/WEB-INF/page/common/menus.jsp"%>
	
	
	<!-- **********************************************************************************************************************************************************
	MAIN CONTENT
	*********************************************************************************************************************************************************** -->
	<!--main content start-->
	<section id="main-content" class="title">
	<section>
	<nav style="height: 50px;width: 100%;" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	    <div class="container-fluid" >
	        <!--向左对齐-->
			<b class="navbar-text navbar-left glyphicon "><a href="${pageContext.request.contextPath}/l_system/librarian/view">首页</a>>>借还系统后台>>发布公告</b>
	        <!--向右对齐-->
	        
	    </div>
	</nav>
	</section>
	<section style="padding-top:100px">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div class="row">
			<p class="text_one"><img src="<%=basePath%>/style/ibooks/img/massge.png" class="img_one">发布公告</p>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-11 col-md-11 col-lg-11 space">
			<form method="post">
				<div class="row">
				<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
					<p>标题：</p>
				</div>
				<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
					<input type="text" id="title" class="form-control">
				</div>
				</div>
				<div class="row">
				<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
					<p>时间：</p>
				</div>
				<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
					<input type="text" id="time" class="form-control inp_one">
				</div>
				</div>
				<div class="row">
				<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
					<p>内容：</p>
				</div>
				<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
					<textarea id="content" rows="3" style="resize:none;"></textarea>
				</div>
				</div>
				<div class="row">
					<input type="submit" value="发布" name="sub" class="btn_one" >
				</div>
			</form>
			</div>
			
		</div>
		<div class="row">
			<p class="text_one"><img src="/ibook/style/indexassets/image/列表.png" class="img_one">公告列表</p>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-11 col-md-11 col-lg-11 space">
				<table border="0" class="table" style="table-layout: fixed;margin:0 auto;">
					<colgroup>
						<col style="width: 25%;"/>
						<col style="width: 25%;"/>
						<col style="width: 25%;"/>
						<col style="width: 25%;"/>
					</colgroup>
					<thead>
					<tr>
						<td>用户</td>
						<td>标题</td>
						<td>发布时间</td>
						<td>操作</td>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>sfdsfgsdgfdgdfgdfgdgdfgdfhgfhgjgjgh</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>	
				</table>	
				<div style="float:right;">
					<a href="#" style="font-size:1em;margin:1rem 0 1rem 0">更多</a>
				</div>
			</div>
			
		</div>
	
	</div>
	</section>
	</section>
</body>
</html>