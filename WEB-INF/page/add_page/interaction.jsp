<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport"
			content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>互动</title>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/common/addpage_common.css" />
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.simplePagination.js"></script>
		<!--css和js脚本写在外面  -->
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/addpage_css/interaction.css" />
		<script src="<%=basePath%>/style/ibooks/js/addpage_js/interaction.js"></script>
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
						<div class="form-control nw-b1"  style="table-layout: fixed;"><p class="over">你现在的位置是：首页->借还系统后台->荐放与反馈</p></div>
					</div>
  				</div>
  				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 tab_one">
  					<div class="row">
  						<img alt="" src="/ibook/style/indexassets/image/图书 (1).png" class="img-responsive img_one"><span class="text_one">读者荐放排行榜</span>
  					</div>
  					<div class="row">
  						<hr class="hr_one" size=4>
  					</div>
  					<div class="row">
  					<div class="table-responsive text_three">
					<table class="table table-bordered" border="1" style="table-layout: fixed;width: 90%;margin:0 auto;">
					<colgroup>
						<col style="width: 25%;"/>
						<col style="width: 25%;"/>
						<col style="width: 25%;"/>
						<col style="width: 25%;"/>
					</colgroup>
					<thead>
					<th><span>书籍名称</span></th>
					<th><span>书籍类型</span></th>
					<th><span>设备号</span></th>
					<th><span>荐放次数</span></th>
					</thead>
					<tbody>
					<tr>
						<td>sfdsfgsdgfdgdfgdfgdgdfgdfhgfhgjgjgh</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
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
					</tr>
					<tr>
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
  				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
  				
  				<div class="row">
  				<div class="col-xs-12 col-sm-12 col-md-7 col-lg-7 tab_one">
  					<div class="row">
  						<img alt="" src="/ibook/style/indexassets/image/图书 (1).png" class="img-responsive img_one"><span class="text_one">书籍荐放</span>
  					</div>
  					<div class="row">
  						<hr class="hr_one" size=4>
  					</div>
  					<form>
  					<div class="row">
  					<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3">
  						<div class="text_two">书籍名称：</div>
  					</div>
  					<div class="col-xs-8 col-sm-8 col-md-9 col-lg-9">
  						<input type="text" id="name" class="form-control inp_one" required="required">
  					</div>
  					</div>
  					<div class="row">
  					<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3">
  						<div class="text_two">书籍类型：</div>
  					</div>
  					<div class="col-xs-8 col-sm-8 col-md-9 col-lg-9">
  						<input type="text" id="book_type" class="form-control inp_one" required="required">
  					</div>
  					</div>
  					<div class="row">
  					<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3">
  						<div class="text_two">设备号：</div>
  					</div>
  					<div class="col-xs-8 col-sm-8 col-md-9 col-lg-9">
  						<input type="text" id="num" class="form-control inp_one" required="required">
  					</div>
  					</div>
  					<div class="row">
  					<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3">
  						<div class="text_two">地点：</div>
  					</div>
  					<div class="col-xs-8 col-sm-8 col-md-9 col-lg-9">
  						<input type="text" id="adress" class="form-control inp_one" required="required">
  					</div>
  					</div>
  					<div class="row">
  						<div class="col-xs-2 col-xs-push-8 col-col-sm-2  col-sm-push-10 col-md-2 col-md-push-10 col-lg-2 btn-one">
  							<input type="submit" id="sub" value="提交" class="btn btn-success " style="margin:1rem 0 1rem 0">
  						</div>
  					</div>
  					</form>
  				</div>
  				<div class="col-xs-12 col-sm-12 col-md-5 col-lg-5 tab_two">
  					<div class="row">
  						<img alt="" src="/ibook/style/indexassets/image/留言.png" class="img-responsive img_one"><span class="text_one">反馈或留言</span>
  					</div>
  					<div class="row">
  						<hr class="hr_one" size=4>
  					</div>
  					<form>
  					<div class="row">
  						<textarea  rows="6" cols="20" class="form-control inp_two" id="words" required="required"></textarea>
  					</div>
  					<div class="row">
  						<div class="col-xs-2 col-xs-push-9 col-col-sm-2  col-sm-push-9 col-md-2 col-md-push-9 col-lg-2 btn-one">
  							<input type="submit" id="sub" value="发送" class="btn btn-success " style="margin:1rem 0 1rem 0" required="required">
  						</div>
  					</div>
  					</form>
  				</div>
  				</div>
  				</div>
			</div>
			</div>
  		</div>  					  				
		</section>
</body>
</html>
