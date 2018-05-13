<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>为什么要选择“共益”</title>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/common/addpage_common.css" />
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.simplePagination.js"></script>
		<!--css和js脚本写在外面  -->
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/addpage_css/advertisement.css" />
		<script src="<%=basePath%>/style/ibooks/js/addpage_js/advertisement.js"></script>

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
  				
  				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 tab_one">
  					<div class="row">
  						<div class="col-xs-10 col-xs-push-1 col-sm-5 col-md-5 col-lg-5">
  							<p class="text_one"><b>小预算，大收益</b></p>
  							<p class="text_two">移动互联网超巨型流量入口，多
							样广告资源覆盖亿级活跃用户，
							一站式解决本地商家推广、活动
							推广、APP下载、电话预约等营
							销诉求，是获得更多客流的营销
							神器！</p>
  						</div>
  						<div class="col-xs-10 col-xs-push-1 col-sm-3 col-sm-push-2 col-md-3 col-lg-3">
  							<input type="button" value="三步加入" class="btn btn-success btn_one">
  						</div>
  					</div>
  					<div class="row">
  						<p class="text_four">为什么选择“共益”</p>
  					</div>
  					<div class="row">
  						<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-0  col-md-2 col-md-push-1 col-lg-3">
  							<img src="/ibook/style/indexassets/image/公益.png" class="img-responsive img_one">
  							<p class="text_three"><b>公益性质</b></p>
  							<p class="text_five">“共益“的一切收入全部用
								于支持公益图书事业，选择
								共益也就是为公益出一份力</p>
  						</div>
  						<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-0 col-md-2 col-md-push-1 col-lg-2">
  							<img src="/ibook/style/indexassets/image/精准.png" class="img-responsive img_one">
  							<p class="text_three"><b>精准智能</b></p>
  							<p class="text_five">世界领先的技术
								与算法，广告推
								送更精准智能。</p>
  						</div>
  						<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-0 col-md-2 col-md-push-1 col-lg-2">
  							<img src="/ibook/style/indexassets/image/海量.png" class="img-responsive img_one">
  							<p class="text_three"><b>海里覆盖</b></p>
  							<p class="text_five">移动互联网亿级
								活跃用户优质用
								户一网打尽。</p>
  						</div>
  						<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-0 col-md-2 col-md-push-1 col-lg-3">
  							<img src="/ibook/style/indexassets/image/效果.png" class="img-responsive img_one">
  							<p class="text_three"><b>效果出众</b></p>
  							<p class="text_five">将转化作为目标，
								机器优化，同样花
								费更多转化。</p>
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
