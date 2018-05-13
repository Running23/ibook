<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0, user-scalable=yes" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>分类</title>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/common/addpage_common.css" />
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.simplePagination.js"></script>
		<!--css和js脚本写在外面  -->
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/addpage_css/classify.css" />
		<script src="<%=basePath%>/style/ibooks/js/addpage_js/classify.js"></script>
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
						<div class="form-control nw-b1" style="table-layout: fixed;"><p class="over">你现在的位置是：首页->借还系统后台->图书分类</p></div>
					</div>
  				</div>
  				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 tab_one">
  					<div class="row">
  						<img alt="" src="/ibook/style/indexassets/image/图书.png" class="img-responsive img_one"><span class="text_one">发布公告</span>
  					</div>
  					<div class="row">
  						<hr class="hr_one" size=4>
  					</div>
  					<div class="row">
  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 space">
  							<div class="over_one">B 宗教与哲学</div>
  						</div>
  						<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10 space">
  							<div class="row" style="table-layout: fixed;">
  								<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one" title="伦理学">伦理学</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">中国哲学</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">宗教与术学</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">名家作品及研究</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">西方哲学</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">马克思哲学</div>
		  						</div>
  							</div>
  							<div class="row">
  								<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">哲学理论与流派</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">美学</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">思维科学</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">逻辑学</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">东方哲学</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">哲学史</div>
		  						</div>
  							</div>
  						</div>
  					</div>
  					<div class="row">
  						<hr class="hr_one" size=4>
  					</div>
  					<div class="row">
  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 space">
  							<div class="over_one">C 社会科学</div>
  						</div>
  						<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10 space">
  							<div class="row">
  								<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">教育</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">社会学</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">语言文学</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">新闻出版社、图书馆</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">文化</div>
		  						</div>
		  						
  							</div>
  							
  						</div>
  					</div>
  					<div class="row">
  						<hr class="hr_one" size=4>
  					</div>
  					<div class="row">
  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 space">
  							<div class="over_one">I 文学</div>
  						</div>
  						<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10 space">
  							<div class="row">
  								<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">作品集</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">散文随笔</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">文学评论与鉴赏</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">诗歌词曲</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">名家作品及欣赏</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">实记文学</div>
		  						</div>
  							</div>
  							<div class="row">
  								<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">文学史</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">民间文学</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">文学理论</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">戏剧与曲艺</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">影视文学</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">文学作品导读</div>
		  						</div>
  							</div>
  						</div>
  					</div>
  					<div class="row">
  						<hr class="hr_one" size=4>
  					</div>
  					<div class="row">
  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 space">
  							<div class="over_one">F 经济图书</div>
  						</div>
  						<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10 space">
  							<div class="row">
  								<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">行业经济</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">贸易经济</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">金融银行与货币</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">经济学理论与读物</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">世界经济</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">工具书与参考书</div>
		  						</div>
  							</div>
  							<div class="row">
  								<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">财政税收</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">财经人物</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">经济史</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">经济体制与改革</div>
		  						</div>
		  						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
		  							<div class="over_one">审计</div>
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
