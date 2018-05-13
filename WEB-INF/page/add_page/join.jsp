<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>加入我们</title>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/common/addpage_common.css" />
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.simplePagination.js"></script>
		<!--css和js脚本写在外面  -->
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/addpage_css/join.css" />
		<script src="<%=basePath%>/style/ibooks/js/addpage_js/join.js"></script>
	</head>
	<body>
		<section class="section-wrap1">		
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
						<div class="form-control nw-b1"><p>你现在的位置是：首页->社会招聘</p></div>
					</div>
  				</div>
  				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 tab_one">
  				<div class="row">
	  				<div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
	  					<select class="sel" style="width: 90%;" id="select">
							<option selected = "selected"  value = "socilism">社会招聘</option>
							<option value = "school">校园招聘</option>
						</select>
					</div>
					<div class="col-xs-6 col-sm-8 col-md-8 col-lg-8">
						<input type="text" class="form-control inp" id="join_content" placeholder="搜索职位">
					</div>
					<div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
						<input type="button" class="btn btn-danger inp" id="join_btn" value="搜索">
					</div>
  				</div>
  				<div class="row">
  					<div class="col-xs-12 col-sm-8 col-sm-push-2 col-md-8 col-lg-8" style="table-layout:fixed;">
  						<div class="row">
  							<div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">面向人群：</p>
  							</div>
  							<div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">全部</p>
  							</div>
  							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">2018届毕业生</p>
  							</div>
  							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">2019届毕业生</p>
  							</div>
  							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">2020届毕业生</p>
  							</div>
  						</div>
  						<div class="row">
  							<div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">职位类别：</p>
  							</div>
  							<div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">全部</p>
  							</div>
  							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">研发</p>
  							</div>
  							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">销售/市场</p>
  							</div>
  							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">设计</p>
  							</div>
  						</div>
  						<div class="row">
  							<div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">工作地点：</p>
  							</div>
  							<div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">全部</p>
  							</div>
  							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">北京</p>
  							</div>
  							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">上海</p>
  							</div>
  							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
  								<p class="text_two">广州</p>
  							</div>
  						</div>
  						
  						
  					</div>
  					
  					
  				</div>
  				
  				<div class="row">
  							<div class="col-xs-12 col-sm-10 col-sm-push-1 col-md-10 col-lg-10">
  								<div class="table-responsive text_three table_one">
								<table class="table table-bordered" border="1" style="table-layout: fixed;width: 100%;margin:0 auto;">
								<colgroup>
									<col style="width: 20%;"/>
									<col style="width: 20%;"/>
									<col style="width: 20%;"/>
									<col style="width: 20%;"/>
									<col style="width: 20%;"/>
								</colgroup>
								<thead>
								<th><span>职位</span></th>
								<th><span>面向人群</span></th>
								<th><span>职位类别</span></th>
								<th><span>工作地点</span></th>
								<th><span>分布时间</span></th>
								</thead>
								<tbody>
								<tr>
									<td>sfdsfgsdgfdgdfgdfgdgdfgdfhgfhgjgjgh</td>
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
									<td></td>
								</tr>
								<tr>
									<td></td>
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
									<td></td>
								</tr>
							</tbody>	
							</table>	
							<div class="col-xs-2 col-xs-push-10 col-sm-2 col-md-2 col-lg-2 ">
								<a href="#" style="font-size:2.2em;margin:1rem 0 1rem 0">更多</a>
							</div>
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
