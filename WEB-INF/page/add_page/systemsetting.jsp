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
		<title>系统设置</title>
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
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/addpage_css/systemsetting.css" />
		<script src="<%=basePath%>/style/ibooks/js/addpage_js/systemsetting.js"></script>

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
			<b class="navbar-text navbar-left glyphicon "><a href="${pageContext.request.contextPath}/l_system/librarian/view">首页</a>>>借还系统后台>>服务器信息</b>
	        <!--向右对齐-->
	        
	    </div>
	</nav>
	</section>
	<section style="padding-top:100px">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div class="row">
			<p class="text_one"><img src="<%=basePath%>/style/ibooks/img/book.png" class="img_one">服务器信息</p>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-11 col-md-11 col-lg-11 space">
			<form method="post">
				<table class="table" border="0" style="table-layout:fixed;border:1px solid #F9E8C3">
				  	<colgroup>
						<col style="width: 30%;"/>
						<col style="width: 70%;"/>
					</colgroup>
					<tbody>
						<tr>
							<td>服务器名称：</td>
							<td><input type="text" class="form-control inp_one" id="s_name"></td>
						</tr>
						<tr>
							<td>服务器ip地址：</td>
							<td><input type="text" class="form-control" id="s_id"></td>
						</tr>
						<tr>
							<td>服务器域名：</td>
							<td><input type="text" class="form-control" id="s_dns_name"></td>
						</tr>
						<tr>
							<td>服务器端口：</td>
							<td><input type="text" class="form-control" id="s_port"></td>
						</tr>
						<tr>
							<td>系统所在文件夹：</td>
							<td><input type="text" class="form-control" id="s_file"></td>
						</tr>
						<tr>
							<td>服务器上次启动到现在已运行：</td>
							<td><input type="text" class="form-control" id="s_time"></td>
						</tr>
						<tr>
							<td>CUP总数：</td>
							<td><input type="text" class="form-control" id="s_cup"></td>
						</tr>
						<tr>
							<td>当前Session：</td>
							<td><input type="text" class="form-control" id="s_session"></td>
						</tr>
						<tr>
							<td>当前SessionID：</td>
							<td><input type="text" class="form-control" id="s_session_id"></td>
						</tr>
					</tbody>
				</table>
				<div class="row">
					<input type="submit" value="提交修改" name="sub" class="success btn_one" >
				</div>
			</form>
			</div>
		</div>
	
	
	</div>
	</section>
	</section>
	

</body>



</html>