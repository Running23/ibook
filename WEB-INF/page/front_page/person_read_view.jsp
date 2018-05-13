<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>个人搜索</title>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/my2.css" />
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
			
		<script src="<%=basePath%>/style/ibooks/js/common/data_transform.js" type="text/javascript"></script>
		<script src="<%=basePath%>/style/ibooks/js/books/recommend_view.js"></script>	
		<script src="<%=basePath%>/style/ibooks/js/books/person_read_view.js"></script>	
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
			<div class="row row1">
				<div class="col-md-2">
				<div class="a6" style="padding-top:10pt">	
				<%@ include file="/WEB-INF/page/common/left_commonother.jsp"%>
				</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
					<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 table2">
						<div class="row">
						<div class="col-xs-5 col-sm-7 col-md-7 col-lg-7">
							<input type="search" class="from-control i" />
						</div>
						<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
							<button class="btn btn-default b11">搜索</button>
						</div>
						<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
							<select class="s11 sl1">
								<option>书籍类型</option>
								<option>文学</option>
								<option>科技</option>
							</select>
						</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
  					<div class="row row2 table3" >
  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="table-layout:fixed;width: 100%;">  																	
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 xh">
							<div class="row">
								<img src="<%=basePath%>/style/indexassets/image/图书馆.png" class="img-circle im" /><b class="f1">最近阅读</b>	
							</div>
						</div>
						<div id="bookLendInfor">
						<div class="row">
							<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1">书籍名字</div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1">类型</div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1">类别</div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1">语种</div>
							<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1">借阅时间</div>
						</div>
						</div>
						<div class="row" style="background-color: #F2B931;border-radius:.5em ;">
							<div class="col-xs-3 col-xs-offset-9 col-sm-2 col-sm-offset-10 col-md-2 col-lg-2" >
								<a href="#"  class="bbv">更多</a>	
							</div>
						</div>
					</div>
					</div>
  					</div>
  					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
  					<div class="row row2 table3" >
  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="table-layout:fixed;width: 100%;" > 												
						<div id="bookRecommendInfor">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 xh" >
							<div class="row">
								<img src="<%=basePath%>/style/indexassets/image/ding.png" class="img-circle imm" /><b class="f1">阅读推荐</b>	
							</div>
						</div>
						</div>
						<div class="row" style="background-color: #F2B931;border-radius:.5em ;">
							<div class="col-xs-3 col-xs-offset-9 col-sm-2 col-sm-offset-10 col-md-2 col-lg-2" >
								<a href="#"  class="bbv">更多</a>
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
