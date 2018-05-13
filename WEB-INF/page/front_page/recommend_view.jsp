<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>推荐</title>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/my2.css" />
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/books/recommend_view.js"></script>
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
				<div class="a6" style="padding-top:10pt">		
				<%@ include file="/WEB-INF/page/common/left_commonother.jsp"%>
				</div>
				</div>
				
  				<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
  					<div class="row">
  						<div  class="col-xs-12 col-sm-12 col-md-12 col-lg-12 table1 tt1" style="table-layout:fixed;width: 100%;"> 							
  							<div class="row" id="bookRecommendInfor">
  							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 xh">
								<div class="row">
									<img src="<%=basePath%>/style/indexassets/image/最爱单品.png" class="img-circle im" /><b class="f1">个性化推荐</b>
								</div>
							</div>
							</div>
  						</div>
  					</div>
  				</div>
  				<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
  					<div class="row">
  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 table1 tt2" style="table-layout:fixed;width: 100%;"> 						
					<div class="row one" id="searchHistoryinfor">						
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 xh">
							<div class="row">
								<img src="<%=basePath%>/style/indexassets/image/资源 97.png" class="img-circle im" /><b class="f1">本周热点</b>	
							</div>
						</div>
						<div class="row two">
							<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1">书籍名字</div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1">作者</div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1">书编目ISBN</div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1">语种</div>
							<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1">借阅数量</div>	
						</div>
					</div>
					</div>
					</div>	
					<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 table1 tt3" style="table-layout:fixed;width: 100%;">
					<div class="row one">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 xh">
									<img src="<%=basePath%>/style/indexassets/image/learn.png" class="img-circle im" /><b class="f1">愿望清单</b>	
								</div>
							</div>
						<div class="row two">
							<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1">书籍名字</div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1">类型</div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1">类别</div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1">语种</div>
							<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1">愿望次数</div>
						</div>
						<div class="row two">
							<a href="#">
							<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1"><span id="sj3">水浒传</span></div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj3">明朝文学明朝文学明朝文学明朝文学明朝文学</span></div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj3">长篇小说</span></div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj3">中文版</span></div>
							<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1"><span id="sj3">xx次</span></div>
							</a>
						</div>
						<div class="row two">
							<a href="#">
							<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1"><span id="sj3">水浒传</span></div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj3">明朝文学明朝文学明朝文学明朝文学明朝文学</span></div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj3">长篇小说</span></div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj3">中文版</span></div>
							<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1"><span id="sj3">xx次</span></div>
							</a>
						</div>
						<div class="row two">
							<a href="#">
							<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1"><span id="sj3">水浒传</span></div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj3">明朝文学明朝文学明朝文学明朝文学明朝文学</span></div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj3">长篇小说</span></div>
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj3">中文版</span></div>
							<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1"><span id="sj3">xx次</span></div>
							</a>
						</div>
						<div class="row">
							<div class="col-xs-3 col-xs-offset-9 col-sm-2 col-sm-offset-10 col-md-2 col-lg-2 col-lg-offset-10">
								<a href="#" style="color: blue;">更多</a>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<textarea placeholder="请写下您的所需求书籍的名字、类型、类别、语种，我们会根据顾客的需 求数量选择调用或进购"></textarea>
							<div>
							<input type="submit" value="发送" class="btn btn-danger in1"/>
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
