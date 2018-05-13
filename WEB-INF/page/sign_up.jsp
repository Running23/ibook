<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<title>注册页面</title>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css">
		
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/style2.css" />
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/reader/sign_up.css" />
		
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.simplePagination.js"></script>
		
		<script src="<%=basePath%>/style/ibooks/js/readers/sign_up.js"></script>
		
		<!-- md5加密 -->
		<script src="<%=basePath%>/style/ibooks/js/common/md5.js"></script>
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
				<div class="row tab_one">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<form id="resiginreader" enctype="multipart/form-data" >
						<div class="row" >				
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">														
							<div class="row">
							<div class="col-xs-12 col-sm-6 col-sm-push-1 col-md-6 col-lg-6">
								<p class="text_one"><b>共益图书借还系统</b></p>
								<p class="text5"><b>GONG YI TU SHU JIE HUAN XI TONG</b></p>
							</div>
							<div class="col-xs-12 col-sm-2 col-sm-push-1 col-md-2 col-lg-2">
								<img src="<%=basePath%>/style/indexassets/image/5.gif" class="three t92"/>
							</div>
							<div class="col-xs-12 col-sm-1 col-sm-push-1 col-md-4 col-lg-4">
								<p class="three text_two"><b>共益图书馆</b></p>
							</div>
							</div>
							<div class="row">
								<div class="col-xs-4 col-sm-5 col-md-5 col-lg-5">
									<hr style="border-top: solid 1px;width: 100%;" />
								</div>
								<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2">
									<p class="text10">账号注册</p>
								</div>
								<div class="col-xs-4 col-sm-5 col-md-5 col-lg-5">
									<hr style="border-top: solid 1px;width: 100%;"/>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
									<div class="row">
										<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
											<p><span class="text6 sl1">用户名：</span></p>
										</div>
										<div class="col-xs-6 col-sm-9 col-md-9 col-lg-9">
											<input type="text" name="readerAccount" id="readerAccount" class="form-control inp2"  placeholder="账户名" required="required">
										</div>
									</div>
									<div class="row">
										<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
											<p><span class="text6 sl1">密码：</span></p>
										</div>
										<div class="col-xs-6 col-sm-9 col-md-9 col-lg-9">
											<input type="password" id="password1" class="form-control inp2"  placeholder="密码" required="required">
										</div>
									</div>
									<div class="row">
										<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
											<p><span class="text6 sl1">确认密码：</span></p>
										</div>
										<div class="col-xs-6 col-sm-9 col-md-9 col-lg-9">
											<input type="password" class="form-control inp2" id="password" name="password" placeholder="重新输入密码" required="required">
										</div>
									</div>
									<div class="row">
										<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
											<p><span class="text6 sl1">姓名：</span></p>
										</div>
										<div class="col-xs-6 col-sm-9 col-md-9 col-lg-9">
											<input type="text" name="readerName" id="readerName" class="form-control inp2"  placeholder="真实姓名" required="required">
										</div>
									</div>
									<div class="row">
										<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
											<p><span class="text6 sl1">性别：</span></p>
										</div>
										<div class="col-xs-6 col-sm-9 col-md-9 col-lg-9 text6"> 
											<label>
									  			<input id="sex" type="radio" name="sex"  value="1" >男 
											</label>
											&nbsp;
											<label>
									  			<input id="sex" type="radio" name="sex" value="0"> 女
											</label>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
											<p><span class="text6 sl1">手机号码：</span></p>
										</div>
										<div class="col-xs-6 col-sm-9 col-md-9 col-lg-9">
											<input type="text" name="phone" id="phone" class="form-control inp2"  placeholder="手机号码" required="required">
										</div>
									</div>
									<div class="row">
										<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
											<p><span class="text6 sl1">验证码:</span></p>
										</div>
										<div class="col-xs-6 col-sm-9 col-md-9 col-lg-9">
											 <input type="text"  id="code" class="form-control"  placeholder="输入验证码" required="required">
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-sm-push-2 col-md-4 col-lg-4">
								<div class="con4">
										<canvas id="cvs" width="150" height="150" class="img_one"></canvas>
										<span class="btn upload_one">上传网证<input type="file" name="picfile" class="upload_pic" id="upload" /></span>
								</div>
								</div>
							</div>
						
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<input type="button"  value="立即注册" class="btn btn-danger inp5"  id="sign_submit"/>
								</div>	
							</div>
							<div class="row">
								<p class="te1"><small>
								<span style="color: red;">温馨提示：</span>
								持证读者无需注册账号</small></p>
							</div>		
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
