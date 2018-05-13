<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>公告/报道</title>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/common/addpage_common.css" />
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.simplePagination.js"></script>
		<!--css和js脚本写在外面  -->
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/addpage_css/reported.css" />
		<script src="<%=basePath%>/style/ibooks/js/addpage_js/reported.js"></script>
	</head>
	<body>
		<section class="section-wrap1">		
		<div class="section section-1 ">			
			<nav class="navbar navbar-default navbar-fixed-top" >
			<!-- 导入导航栏内容 -->
			<%@ include file="/WEB-INF/page/common/index_common.jsp"%>			
			</nav>
			<!-- 写页面代码 -->
			<div class="container-fluid">
			<div class="row">
				<div class="col-md-2 a6">
				<%@ include file="/WEB-INF/page/common/left_commonother.jsp"%>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
  					<div class="row">
						<div class="form-control nw-b1"><p>你现在的位置是：首页->公告</p></div>
					</div>
  				</div>
  				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 tab_one">
  				<div class="row">
  					<div class="col-xs-10 col-xs-push-1 col-sm-10 col-md-8 col-md-push-2 col-lg-8">
  					<div class="row">
  						<p class="text">公告/报道题目</p>
  					</div>	
  					<div class="row">
  						<p class="text_one">时间</p>
  					</div>
  					<div class="row">
  						<p id="reported_content" class="text_two">
  						Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Aenean euismod bibendum laoreet. Proin gravida dolor
						sit amet lacus accumsan et viverra justo commodo. Proin 
						sodales pulvinar tempor. Cum sociis natoque penatibus et 
						magnis dis parturient montes, nascetur ridiculus mus.
						Nam fermentum, nulla luctus pharetra vulputate, felis 
						tellus mollis orci, sed rhoncus sapien nunc eget.
  						</p>
  					</div>
  					<div class="row">
  						<p class="text_one" style="margin-bottom:2em">署名</p>
  					</div>
  					</div>
  				</div>
  				</div>
			</div>
			</div>
  		</div>  					  				
		</section>
	</body>
</html>
