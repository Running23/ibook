<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>预约</title>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/my2.css" />
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/book/bookinfo.css" />
		
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.simplePagination.js"></script>
    <!--fjr-->
    
    
    	<script src="<%=basePath%>/style/ibooks/js/common/data_transform.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/my.js" type="text/javascript"></script>
		<script src="<%=basePath%>/style/ibooks/js/books/bookinfor.js" type="text/javascript"></script>
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
        <!--左边悬浮框  -->
				<%@ include file="/WEB-INF/page/common/left_commonother.jsp"%>
				</div>
				</div>
  				
  				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 ">
  					<div class="row table4">
  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" > 							
  						<div class="row xh">
  						<div class="col-xs-4 col-sm-2" >
    						<div class="col-xs-12 lend" >
							   <p>取书时间：</p>
							</div>
						</div>
						<div class="col-sm-10 col-md-3 col-lg-3" >
							<input type="date" id="getbookTime" class="from-control i"  />
						</div>
  						<div class="col-xs-4 col-sm-2" >
  							<select class="sl1 s1 s_width" id="borrowTime">
							<option>借阅天数</option>
							<option>30</option>
							<option>60</option>
							</select>
						</div>
						</div>
						<c:if test="${sessionScope.ib != null }">
						<div class="row "> 							
  							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="table-layout: fixed;width: 100%;">
  								<div class="row">
  									<div class="col-xs-6 col-sm-2 col-sm-offset-5 col-md-1 col-lg-1 col-lg-offset-6">
  										<p  class="in3">保存至书单</p>
  									</div>
  									<div class="col-xs-6 col-sm-1 col-md-1 col-lg-1">
  										<select  class="in3">
  										<option>我最爱</option>
  										<option>1</option>
  										<option>2</option>
  										<option>3</option>
  										</select>
  									</div>
  									<div class="col-xs-6 col-sm-1 col-md-1 col-lg-1">
  										<input class="btn-danger in22 sl1" type="button" id="bt1" value="保存"  />
  									</div>
  									<div class="col-xs-6 col-sm-1 col-md-1 col-lg-1">
  										<input class="btn-danger in2 sl1" type="button" id="bt2" value="添加临时书单"  />
  									</div>
  									<div class="col-xs-6 col-sm-1 col-md-1 col-lg-1">
  										<input class="btn-danger in22 sl1" type="button" id="bt3" value="加入书签"  />
  									</div>
  									<div class="col-xs-6 col-sm-1 col-md-1 col-lg-1">
  										<input class="btn-danger in2 sl1" type="button" id="bt4" value="添加书签"  />
  									</div>
  								</div>
  							</div>
  						</div>
						</c:if>
  						<div class="row">
  						<div class="col-xs-4 col-sm-3 col-md-3 col-lg-3">
  							<div class="row">
  								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6">
  									<img src="<%=basePath%>/style/indexassets/image/1.jpg" class="im3"  id="img" style="height:150px;width:100px;"/>
  								</div>
  								<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
  									<img src="<%=basePath%>/style/indexassets/image/1.jpg" class="im4"  id="reimg" style="height:95px;width:70px;"/>
  								</div>
  							</div>
  							<div class="row">
  							  	<c:if test="${sessionScope.ib != null }">
  								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 ">
  									<input type="button" value="预约" class="btn btn-danger i1" id="btn"/>
  								</div>
  								</c:if>
  							</div>
  							 <c:if test="${sessionScope.ib == null }">
  								<br/>
  								<spand class="text-primary h5 text-center">提示：登录后才可预约</spand>
  							</c:if>
  						</div>
						<div class="col-xs-8 col-sm-9 col-md-9 col-lg-9">
  						<div class="row">
  						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="table-layout: fixed;width: 100%;">
  						<div class="row"> 							
  							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6">
  								<b class="f2">书籍名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="bookTitl"></span></b>	
  							</div>
  						</div>			
  						<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in4">书籍类型:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in41" id="bookTypes"></p>
  							</div>
  						</div>
						<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								 <p class="in4">ISBN:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in41" id="bookNumber"></p>
                 				<input type="hidden" id="id"  value=${param.bookId} />
                 				<input type="hidden" id="ISBN"  />
                 			</div>
                 		</div>
                 		<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in4">作者:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in41" id="author"></p>
  							</div>
  						</div>
  						<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								 <p class="in4">语种:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in41">"汉语"</p>
  							</div>
  						</div>
  						<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in4">出版时间:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								 <p class="sl1 in41"  id="publicationDate"></p>
  							</div>
  						</div>
  						<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in4">出版发行:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in41" id="publishingHouse"></p>
  							</div>
  						</div>
  						
  						<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in4">语录简介:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in41" id="blurb"></p>
  							</div>
  						</div>

						<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in4">图书馆:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in41">广州大学图书馆</p>
  							</div>
  						</div>
						<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in4">分享资源:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in41">广州xxx图书馆</p>
  							</div>
  						</div>
						<div class="row">  							
  							<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
  								<p class="in4">书架号:</p>
  							</div>
  							<div class="col-xs-8 col-sm-10 col-md-10 col-lg-10">
  								<p class="sl1 in41">51号</p>
  							</div>
  						</div>
  						</div>
  						</div>
  						</div>
  						</div>
  						</div>  					
  					</div>	
  					<div class="row">
  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 d1">
  					<div class="row" > 
  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 d1">
  						<div class="row">
	  						<img alt="" src="/ibook/style/indexassets/image/图书.png" class="img-responsive img_one"><span class="text_one">书本评论</span>
	  					</div>
	  					<div class="row">
	  						<hr class="hr_one" size="4" />
	  					</div>
	  					<div class="row">
	  					<div class="mar">
	  						<div class="content">
	  							
	  						</div>
	  					</div>
	  					</div>
	  					<div class="row">
	  					<form method="post">
	  					
	  					<div class="col-xs-11 col-sm-11 col-md-11 col-lg-11 mar_two">
	  						<textarea class="area"></textarea>
	  					</div>
	  					
	  					<div class="col-xs-2 col-xs-push-9 col-sm-2 col-sm-push-10 col-md-2 col-lg-2 ">
	  						<input type="submit" value="发送" class="btn btn-success" required="required">
	  					</div>
	  					</form>
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
