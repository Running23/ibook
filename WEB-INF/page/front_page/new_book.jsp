<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title></title>
		<link rel="stylesheet" href="<%=basePath%>/style/indexassets/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=basePath%>/style/indexassets/css/style2.css" />
		<link rel="stylesheet" href="<%=basePath%>/style/indexassets/css/simplePagination.css" />
		<script src="<%=basePath%>/style/indexassets/js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/indexassets/js/bootstrap.min.js"></script>
		<script src="<%=basePath%>/style/indexassets/js/my.js" type="text/javascript"></script>	
	</head>
	<body>
		<section class="section-wrap">	
		<div class="section section-1 ">		
			<nav class="navbar navbar-default navbar-fixed-top" >
			<!-- 导入导航栏内容 -->
			<%@ include file="/WEB-INF/page/common/index_common.jsp"%>
			</nav>
			<div class="container-fluid">
			<div class="row">
				<div class="col-md-2 a6">
				<%@ include file="/WEB-INF/page/common/left_commonother.jsp"%>
				</div>
			<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
				<div class="row">
				<div class="form-control nw-b1"><p>你现在的位置是：首页->新书推荐</p></div>
			</div>
			<div class="row t6">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="table-layout:fixed;width: 100%;">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 xh">								
					<span>
					<img src="<%=basePath%>/style/indexassets/image/图书.png" class="imm" /><b class="f1">新书推荐</b>
					<span class="w2">
					<small id="ss1" class="w1"><input type="button" value="新书推荐" class="btn active btn-danger"/></small>
					<small id="ss2" class="w1"><input type="button" value="借阅排行榜" class="btn btn-danger"/></small>
					<small id="ss3" class="w1"><input type="button" value="专题推荐" class="btn btn-danger"/></small>
					<small id="ss4" class="w1"><input type="button" value="猜你喜欢" class="btn btn-danger"/></small>
					<small class="w1">	
   	 					<span class=" btn btn-primary fa-search" onclick="change();"><img src="<%=basePath%>/style/indexassets/image/图书_A搜索.png" class="im">
   	 					</span>
   	 				<span id="search"  style="display: none;float: left;">
   	 					<input type="text" class="form-control inp6">
   	 				</span>
   	 				</small>
   	 				</span>
   	 				</span>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="中文图书" class="btn btn-default active im4"></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="外文图书" class="btn btn-default im4"></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="电子图书" class="btn btn-default im4"></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="中文期刊" class="btn btn-default im4"></div>
			</div>
			<div class="row">								
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="外文期刊" class="btn btn-default im4"></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="儿童图书" class="btn btn-default im4"></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="视听资料" class="btn btn-default im4"></div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="table-responsive">
						<table class="table table-condensed t7 t81" style="table-layout:fixed;width: 100%;background-color: #FCE19D;">
							<tr>
								<td>
									<a href="#"><img src="<%=basePath%>/style/indexassets/image/1.jpg" class="im6">
									<p class="sl1" id="sj1">电影世界</p>
									<p class="sl1" id="sj1">2017-09-03</p>
									</a>
								</td>
								<td>
									<a href="#"><img src="<%=basePath%>/style/indexassets/image/1.jpg" class="im6">
									<p class="sl1" id="sj1">电影世界</p>
									<p class="sl1" id="sj1">2017-09-03</p>
									</a>
								</td>
								<td>
									<a href="#"><img src="<%=basePath%>/style/indexassets/image/1.jpg" class="im6">
									<p class="sl1" id="sj1">电影世界</p>
									<p class="sl1" id="sj1">2017-09-03</p>
									</a>
								</td>
								<td>
									<a href="#"><img src="<%=basePath%>/style/indexassets/image/1.jpg" class="im6">
									<p class="sl1" id="sj1">电影世界</p>
									<p class="sl1" id="sj1">2017-09-03</p>
									</a>
								</td>
								<td>
									<a href="#"><img src="<%=basePath%>/style/indexassets/image/1.jpg" class="im6">
									<p class="sl1" id="sj1">电影世界</p>
									<p class="sl1" id="sj1">2017-09-03</p>
									</a>
								</td>
							</tr>	
							<tr>
								<td>
									<a href="#"><img src="<%=basePath%>/style/indexassets/image/1.jpg" class="im6">
									<p class="sl1" id="sj1">电影世界</p>
									<p class="sl1" id="sj1">2017-09-03</p>
									</a>
								</td>
								<td>
									<a href="#"><img src="<%=basePath%>/style/indexassets/image/1.jpg" class="im6">
									<p class="sl1" id="sj1">电影世界</p>
									<p class="sl1" id="sj1">2017-09-03</p>
									</a>
								</td>
								<td>
									<a href="#"><img src="<%=basePath%>/style/indexassets/image/1.jpg" class="im6">
									<p class="sl1" id="sj1">电影世界</p>
									<p class="sl1" id="sj1">2017-09-03</p>
									</a>
								</td>
								<td>
									<a href="#"><img src="<%=basePath%>/style/indexassets/image/1.jpg" class="im6">
									<p class="sl1" id="sj1">电影世界</p>
									<p class="sl1" id="sj1">2017-09-03</p>
									</a>
								</td>
								<td>
									<a href="#"><img src="<%=basePath%>/style/indexassets/image/1.jpg" class="im6">
									<p class="sl1" id="sj1">电影世界</p>
									<p class="sl1" id="sj1">2017-09-03</p>
									</a>
								</td>
							</tr>										
						</table>										
					</div>
				<div class="row">												
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="pagination-holder clearfix">
    					<span id="compact-pagination"></span>
  					</div>
					</div>
					<script src="<%=basePath%>/style/indexassets/js/jquery.simplePagination.js"></script>
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
