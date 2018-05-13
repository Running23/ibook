<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>个人借阅信息</title>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/my2.css" />
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/reader/person_lend_view.css" />
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
		
		<script src="<%=basePath%>/style/ibooks/js/books/person_lend_view.js" type="text/javascript"></script>	
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
			<div class="row row1">
				<div class="col-md-2">
				<div class="a6" style="padding-top:10pt">	
				<%@ include file="/WEB-INF/page/common/left_commonother.jsp"%>
				</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">										
					<div class="row ">						
  					<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
  					<div class="row" >
  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 table2" style="table-layout:fixed;width: 100%;">						
						<div class="row xh">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<img src="<%=basePath%>/style/ibooks/img/图书馆.png" class="img-circle im"/><b class="f3">书籍预约</b>	
							</div>
						</div>
						<div class="row">
							<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><b class="f2">书籍名字</b></div>
							<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><b class="f2">书籍类别</b></div>
							<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><b class="f2">取书时间</b></div>							
						</div>
						<div class="row f4" id="bookAppointInfor">
						</div>

						<div class="row f4" style="background-color: #F2B931;border-radius:.5em ;">
							<div class="col-xs-3 col-xs-offset-9 col-sm-3 col-md-3 col-lg-3 sl1">
								<a href="#"  class="bbv">更多</a>
							</div>	
						</div>
					</div>
					</div>
  					</div>
  					<div class="col-xs-12 col-xs-offset-0 col-sm-12 col-sm-offset-0 col-md-3 col-md-offset-1 col-lg-3 ">
  					<div class="row" >
  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 table2" style="table-layout:fixed;width: 100%;">  																	
						<div class="row xh">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<img src="<%=basePath%>/style/ibooks/img/图书馆.png" class="img-circle im" /><b class="f3">正在借阅</b>	
							</div>
						</div>
						<div class="row">							
							<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><b class="f2">书籍名字</b></div>
							<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><b class="f2">书籍类别</b></div>
							<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><b class="f2">借阅时间</b></div>
							
						</div>
						<div class="row f4" id="bookLendingInfor">
						</div>
						<div class="row f4" style="background-color: #F2B931;border-radius:.5em ;">
							<div class="col-xs-3 col-xs-offset-9 col-sm-3 col-md-3 col-lg-3 sl1">
								<a href="#"  class="bbv">更多</a>
							</div>
						</div>
					</div>
					</div>
  					</div>
  					<div class="col-xs-12 col-xs-offset-0 col-sm-12 col-sm-offset-0 col-md-3 col-md-offset-1 col-lg-3">
  					<div class="row" >
  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 table2" style="table-layout:fixed;width: 100%;">
						<div class="row xh">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<img src="<%=basePath%>/style/ibooks/img/图书馆.png" class="img-circle im" /><b class="f3">历史借阅</b>	
							</div>
						</div>
						<div class="row">
							<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><b class="f2">书籍名字</b></div>
							<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4"><b class="f2">归还时间</b></div>							
						</div>
						<div class="row f4" id="bookLendInfor">
						</div>
						<div class="row f4" style="background-color: #F2B931;border-radius:.5em ;">
							<div class="col-xs-3 col-xs-offset-9 col-sm-3 col-md-3 col-lg-3 sl1">
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
