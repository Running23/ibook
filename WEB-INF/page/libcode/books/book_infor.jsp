<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>取书/还书界面</title>
 		<link href="<%=basePath%>/style/ibooks/css/book/book_infor_style.css" rel="stylesheet"/>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/my2.css" />		
		<link href="<%=basePath%>/style/ibooks/css/ext_assets_css/style-responsive.css" rel="stylesheet">
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
		<!--fjr-->
		<script src="<%=basePath%>/style/ibooks/js/books/book_infor.js" type="text/javascript"></script>
		<script src="<%=basePath%>/style/ibooks/js/common/data_transform.js" type="text/javascript"></script>
	</head>
	<body>
		<section class="section-wrap1">		
		<div class="section section-1 ">		
			<div style="position: absolute;">
			<nav class="navbar navbar-default navbar-fixed-top" >
			<!-- 导入导航栏内容 -->
			<%@ include file="/WEB-INF/page/common/index_common.jsp"%>
			</nav>
			</div>
			<div class="container-fluid" style="position: relative;">
			<div class="row">
				<div class="col-md-2">
				<div class="a6" style="padding-top:20pt">			
				<%@ include file="/WEB-INF/page/common/left_commonother.jsp"%>
				</div>
  				</div>
  				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 ">
  					<div class="row table6">
  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
  					<div class="row xh">
  						<img src="<%=basePath%>/style/ibooks/img/图书馆.png" class="img-circle im" /><b class="f11">书籍信息</b>
  					</div>
  					<div class="row">
  						<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
  							<div class="row">
  								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6">
  									<img src="<%=basePath%>/style/ibooks/img/1change.jpg" class="im3" id="img"/>
  								</div>
  								<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
  									<img src="<%=basePath%>/style/ibooks/img/1change.jpg" class="im4" id="reimg"/>
  								</div>
  							</div>
  							<div class="row">
  								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 ">
  									<button  class="btn btn-danger i1" id="btn">取书</button>
  								</div>
  								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 ">
  									<button  class="btn btn-danger i1" id="btn_bookreturn">设备还书</button>
  								</div>
  							</div>  							
  						</div>
  						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
  						<div class="row">
  						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="table-layout: fixed;width: 100%;">
  							<div class="row"> 							
  							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
  								<b class="f22">书籍名称：&nbsp;&nbsp;${param.bookTitl}&nbsp;&nbsp;
  								书籍类型：${param.bookTypes}&nbsp;</b>
  							</div>
  							</div>
  							<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in42">ISBN:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in42" id="isbn"></p>
  								<input type="hidden" id="bookid" class="in5" value=${param.code} />
  							</div>
  							</div>
  							<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in42">语种:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">	
  								<p class="sl1 in42">"汉语"</p>
  							</div>
  							</div>
  							<div class="row"> 							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in42">作者:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">	
  								<p class="sl1 in42" id="author"></p>
  							</div>
  							</div>
  							<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in42">出版发行:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p  class="sl1 in42" id="publishingHouse"></p>
  							</div>
  							</div>
  							<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in42">语录简介:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in42" id="blurb"></p>
  							</div>
  							</div>
  							<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in42">出版时间:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in42"  id="publicationDate"></p>
  							</div>
  							</div>
  							<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in42">图书馆:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in42">广州xxx图书馆</p>
  							</div>
  							</div>
  							<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in42">电子资源链接:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in42">广州xxx电子图书馆</p>
  							</div>
  							</div>
  							<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in42">设备位置:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in42">广州大学华软软件学院E型教学楼</p>
  							</div>
  							</div>
  							<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in42">分享资源:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in42">广州xxx图书馆</p>
  							</div>
  							</div>
  					</div>
  				</div>
  				</div>
  				</div>
  				</div>
			</div>
			</div>
		</div>
		</div>
		</div>
		
		
		</section><!--[if IE]>
		<![endif]-->
	</body>
	
</html>
