<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<title>个人中心</title>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/my2.css" />
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/reader/personpage.css" />
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/simplePagination.css" />
		
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/my.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.simplePagination.js"></script>
		
	</head>
	<body>
		<section class="section-wrap">		
		<div class="section section-1 ">			
			<nav class="navbar navbar-default navbar-fixed-top" >
			<!-- 导入导航栏内容 -->
			<%@ include file="/WEB-INF/page/common/index_common.jsp"%>	
			</nav>			
			<div class="container-fluid">
			<div class="row space">				
			<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 col-lg-offset-2" >
				<div class="row">
				<div class="form-control nw-b1"><p>您现在的位置是：首页->个人中心</p></div>
				</div>
				<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="row t6">
								<div class="col-xs-6 col-sm-3 col-md-2 col-lg-2">
									<img  id="readerPicpath" src="${readerinfor.readerPicpath}" width="70" height="70" style="margin:5% 0 5% 0;width:70px"/>
								</div>
								<div class="col-xs-6 col-sm-7 col-md-8 col-lg-8">
									<p class="text_one">信用额度</p>
									<p class="text_one">0.0</p>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
						<div class="row tab_one">
							<div class="col-xs-4 col-sm-9 col-sm-offset-1 col-md-3 col-lg-8 col-lg-offset-1 t62">
								<a href="person.html"><input type="button" class="btn btn-default inp_one" value="修改/上传头像"></a>
							</div>
							<div class="col-xs-4 col-sm-9 col-sm-offset-1 col-md-3 col-lg-8 col-lg-offset-1 t62">
								<a href="person.html"><input type="button" class="btn btn-default inp_one" value="修改密码"></a>
							</div>
							<div class="col-xs-4 col-sm-9 col-sm-offset-1 col-md-3 col-lg-8 col-lg-offset-1 t62">
								<a href="person.html"><input type="button" class="btn btn-default inp_one" value="完善信息"></a>
							</div>
							<div class="col-xs-4 col-sm-9 col-sm-offset-1 col-md-3 col-lg-8 col-lg-offset-1 t62">
								<a href="${pageContext.request.contextPath}/l_system/frontpages/page/personreadview"><input type="button" class="btn btn-default inp_one" value="正在借阅"></a>
							</div>
							<div class="col-xs-4 col-sm-9 col-sm-offset-1 col-md-3 col-lg-8 col-lg-offset-1 t62">
								<a href="${pageContext.request.contextPath}/l_system/frontpages/page/personlendview"><input type="button" class="btn btn-default inp_one" value="历史借阅"></a>
							</div>
							<div class="col-xs-4 col-sm-9 col-sm-offset-1 col-md-3 col-lg-8 col-lg-offset-1 t62">
								<a href="${pageContext.request.contextPath}/l_system/frontpages/page/recommendview"><input type="button" class="btn btn-default inp_one" value="借阅推荐"></a>
							</div>
							<div class="col-xs-4 col-sm-9 col-sm-offset-1 col-md-3 col-lg-8 col-lg-offset-1 t62">
								<a href="${pageContext.request.contextPath}/l_system/lendbookpages/page/lendbookpageview"><input type="button" class="btn btn-default inp_one" value="我的收藏"></a>
							</div>
							
						</div>
					</div>
					<div class="col-xs-12 col-sm-8 col-sm-offset-1 col-md-8 col-lg-8 col-lg-offset-1">
					<div class="row tab_two">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
						<div class="row xh">
						<img src="<%=basePath%>/style/indexassets/image/person.png" class="imm5"/><span class="f8">个人中心</span>
						</div>
						<div class="row">
							<div class="col-xs-6 col-sm-12 col-md-12 col-lg-12">
								<p class="f9 sl1"><span>账号：</span><span id="sj1">${readerinfor.readerNickname}</span></p>
							</div>
							<div class="col-xs-6 col-sm-12 col-md-12 col-lg-12">
								<p class="f9 sl1"><span>姓名：</span><span id="sj1">${readerinfor.readerName}</span></p>
							</div>							
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<span class="f9">性别：</span><span class="f9 sl1" id="sj1">${readerinfor.sex}</span>
							</div>
							
						</div>						
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<span class="f9">身份证号码：</span><span class="f9 sl1" id="sj1">1321654685446465</span>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<span class="f9">住址：</span><span class="f9 sl1" id="sj1">${readerinfor.readerAddress}</span>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6 col-sm-12 col-md-12 col-lg-12">
								<p class="f9 sl1">手机号码：<span id="sj1">${readerinfor.phone}</span></p>
							</div>
						
							<div class="col-xs-6 col-sm-12 col-md-12 col-lg-12">
								<p class="f9 sl1">电子邮箱：<span id="sj1">${readerinfor.email}</span></p>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-3 col-sm-3 col-md-2 col-lg-2">
								<p class="f9 sl1">网证：</p>
							</div>
							<div class="col-xs-9 col-sm-9 col-md-10 col-lg-10">
								<img  id="readerPicpath" src="${readerinfor.readerPicpath}" width="150" height="150" style="margin:2% 0 2% 0;width:200px"/>
							</div>
						</div>
<!-- 						<div class="row">
							<div class="col-xs-6 col-sm-12 col-md-12 col-lg-12">
								<p class="f9 sl1">地址：<span id="sj1">广州市从化区太平镇广从大道13号</span></p>
							</div>
						
							<div class="col-xs-6 col-sm-12 col-md-12 col-lg-12">
								<p class="f9 sl1">户口所在地：<span  id="sj1">太平镇</span></p>
							</div>
						</div> -->
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
