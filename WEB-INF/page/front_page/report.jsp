<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
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
			<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" >
			<div class="row">
			<div class="form-control nw-b1"><p>你现在的位置是：首页->图书馆公告</p></div>
			</div>
			<div class="row t6">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="table-layout: fixed;width: 100%;">						
				<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 xh">
				<span>
				<img src="<%=basePath%>/style/indexassets/image/图书_A搜索.png" class="imm"/><b class="f1">图书馆公告</b>
				<small class="w2">
					<span class=" btn btn-primary fa-search" onclick="change();">
					<img src="<%=basePath%>/style/indexassets/image/图书_A搜索.png" class="im">
					</span>
					<span id="search" style="display: none;float: left;">
					<input type="text" class="form-control inp6">
					</span>
				</small>
				</span>
				</div>
				</div>
				<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">									
				<div class="table-responsive">
					<table class="table table-condensed t9" style="table-layout: fixed;width: 100%;">
					<colgroup>
						<col style="width: 70%;" />
						<col style="width: 20%;"/>
						<col style="width: 20%;"/>
					</colgroup>
					<thead>
					<th><span>标题</span></th>
					<th><span>时间</span></th>
					<th><span>点击数</span></th>
					</thead>
					<tbody>
					<tr>
						<td id="sj1">关于开展广东省第六届英语配音大赛的通知</td>
						<td id="sj1">2018-01-23</td>
						<td id="sj1">46564</td>
					</tr>
					<tr>
						<td id="sj1">关于开展广东省第六届英语配音大赛的通知</td>
						<td id="sj1">2018-01-23</td>
						<td id="sj1">46564</td>
					</tr>
					<tr>
						<td id="sj1">关于开展广东省第六届英语配音大赛的通知</td>
						<td id="sj1">2018-01-23</td>
						<td id="sj1">46564</td>
					</tr>
					<tr>
						<td id="sj1">关于开展广东省第六届英语配音大赛的通知</td>
						<td id="sj1">2018-01-23</td>
						<td id="sj1">46564</td>
					</tr>
					<tr>
						<td id="sj1">关于开展广东省第六届英语配音大赛的通知</td>
						<td id="sj1">2018-01-23</td>
						<td id="sj1">46564</td>
					</tr>
				</tbody>
				</table>
				</div>									
			</div>
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
		</section><!--[if IE]>			
		<![endif]-->
	</body>
</html>
