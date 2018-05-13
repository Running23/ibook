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
				<div class="form-control nw-b1"><p>你现在的位置是：首页->数字资源</p></div>
			</div>
			<div class="row t6">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 xh">			
						<span>
						<img src="<%=basePath%>/style/indexassets/image/资源 97.png" class="imm" /><b class="f1">数字资源</b></span>
						<span class="w2">
						<small id="ss1" class="w1 f11"><a href="#"><img src="<%=basePath%>/style/indexassets/image/前进 (1).png" class="imm" />入口1</a></small>
						<small id="ss1" class="w1 f11"><a href="#"><img src="<%=basePath%>/style/indexassets/image/前进 (1).png" class="imm" />入口2</a></small>
						<small class="w1">
							<span class=" btn btn-primary fa-search" onclick="change();">
							<img src="<%=basePath%>/style/indexassets/image/图书_A搜索.png"class="im"></span>
							<span id="search" style="display: none;float: left;">	
								<input type="text" class="from-control inp6"></span>	
						</small>
						</span>	
					</div>
				</div>
				<div class="row">
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="综合数据库" class="btn btn-default active im4 sl1"></div>
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="电子图书" class="btn btn-default im4 sl1"></div>
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="电子报刊" class="btn btn-default im4 sl1"></div>
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="多媒体" class="btn btn-default im4 sl1"></div>
				</div>
				<div class="row">
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="主题资源" class="btn btn-default im4 sl1"></div>
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="人文" class="btn btn-default im4 sl1"></div>
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="试用图书馆" class="btn btn-default im4 sl1"></div>
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="开放存取资源" class="btn btn-default im4 sl1"></div>
				</div>
				<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="table-responsive">
						<table class="table table-condensed t8 t81" style="table-layout:fixed;width: 100%;background-color: #FFEFC6;">
						<colgroup>
							<col style="width: 30%" />
							<col style="width: 50%;"/>
							<col style="width: 20;%;"/>
						</colgroup>
						<tbody>
							<tr>
								<td class="ta3 td3">
								<span class="sl" id="sj1">中国知网（CNKI）</span>
								</td>
								<td class="ta2 td3">
								<p>数据库简介：</p>
								<textarea disabled="disabled" class="area" rows="2" id="sj1">中国知网包括CNKI系列数据库和来自国内外的加盟数据库2600多个，收录了中国90%以上的中文学术资源</textarea>
								<p>收藏单位：<span id="sj1">广州图书馆  </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   服务方式：<span id="sj1">共享</span>
								<input type="button" value="打开" class="btn-danger bt2" />
								</p>
								</td>
								<td class="ta3">
									<span class="sl" id="sj1"><span>点击数12345</span>							
								</td>
							</tr>
						</tbody>
						</table>
					</div>
				</div>
				</div>
				<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="table-responsive">
						<table class="table table-condensed t8 t81" style="table-layout:fixed;width: 100%;background-color: #FFEFC6;">
						<colgroup>
							<col style="width: 30%" />
							<col style="width: 50%;"/>
							<col style="width: 20;%;"/>
						</colgroup>
						<tbody>
							<tr>
								<td class="ta3 td3">
								<span class="sl" id="sj1">中国知网（CNKI）</span>
								</td>
								<td class="ta2 td3">
								<p>数据库简介：</p>
								<textarea disabled="disabled" class="area" rows="2" id="sj1">中国知网包括CNKI系列数据库和来自国内外的加盟数据库2600多个，收录了中国90%以上的中文学术资源</textarea>
								<p>收藏单位：<span id="sj1">广州图书馆  </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   服务方式：<span id="sj1">共享</span>
								<input type="button" value="打开" class="btn-danger bt2" />
								</p>
								</td>
								<td class="ta3">
									<span class="sl" id="sj1"><span>点击数12345</span>							
								</td>
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
			</div>
		</section><!--[if IE]>	
		<![endif]-->
	</body>
</html>
