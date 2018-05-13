<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>登录页面</title>
    <!-- Bootstrap core CSS -->
    <link href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css" rel="stylesheet">
    <!--external css-->
    <link href="<%=basePath%>/style/ibooks/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <!-- Custom styles for this template -->
    <link href="<%=basePath%>/style/ibooks/css/ext_assets_css/style-responsive.css" rel="stylesheet">
    <!--ibooks styles for this template-->
    <link href="<%=basePath%>/style/ibooks/css/style.css" rel="stylesheet">
    <!-- 另外一个新样式 -->
    <link href="<%=basePath%>/style/ibooks/css/login.css" rel="stylesheet">
    <script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.backstretch.min.js"></script>
		<!-- md5加密 -->
	<script src="<%=basePath%>/style/ibooks/js/common/md5.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/index/login.js"></script>

</head>
<body>
	<!-- 导入头部 -->
	<%@ include file="/WEB-INF/page/common/header_login.jsp"%>

	<section id="section-login">
		<div id="login-page row">
			<div class="container">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 tit">
					<div class="row">
						<div class="nw-b1"><p class="text_one">共益图书系统</p></div>
					</div>
				</div>
				<div class="col-xs-10 col-xs-push-1 col-sm-7 col-sm-push-3 col-md-4 col-md-push-4 col-lg-4 tab_one">
				<div class="row bg-green">
					<p class="text_two">登陆</p>
				</div>
				<form id="login_form"  class="row" >
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					
					<input type="hidden" name="password" id="password"/>
					<div class="row">
						<div class="col-xs-12 col-sm-10 col-sm-push-1 col-md-10 col-md-push-1 col-lg-10">
							<p class="text_three">读者账号或手机</p>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-10 col-sm-push-1 col-md-10 col-md-push-1 col-lg-10">
							<input id="userID" name="userID" type="text" class="form-control inp_one" placeholder="账号" autofocus>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-10 col-sm-push-1 col-md-10 col-md-push-1 col-lg-10">
							<p class="text_three">密码</p>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-10 col-sm-push-1 col-md-10 col-md-push-1 col-lg-10">
							<input id="psd" name="psd" type="password" class="form-control inp_one" placeholder="密码">
						</div>
					</div>
						<!-- 
						<div class="form-group">
							<div class="col-md-6">
								<input type="text" class="form-control" placeholder="验证码">
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control" placeholder="验证码">
							</div>
						</div>
						-->
						<div class="row">
						<div class="col-xs-12 col-sm-10 col-sm-push-2 col-md-10 col-md-push-1 col-lg-10">
							<div class="row">
								<div class="col-xs-6 col-xs-push-1 col-sm-6 col-md-6 col-lg-6">
									<a href="${pageContext.request.contextPath}/l_system/reader/signview">注册</a>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
									<span class="text_four"><a href="#">忘记密码？</a></span>
								</div>
							</div>
						</div>
						</div>
						<div id="resultMsg" class="col-xs-12 col-sm-10 col-sm-push-1 col-md-10 col-md-push-1 col-lg-10"></div>
						<div class="row">
						<div class="col-xs-12 col-sm-10 col-sm-push-1 col-md-10 col-md-push-1 col-lg-10">
							<button type="button" class="btn btn_one"  id="login">登录</button>
						</div>
						</div>

						<!--<div class="form-group">
							 <div class="col-md-6">
								<a>忘记密码？</a>
								<a class="btn btn-default btn-xs">忘记密码？</a>
							</div> 
							<div class="col-md-6">
								<a href="${pageContext.request.contextPath}/l_system/reader/signview">注册</a>
								<a class="btn btn-primary btn-sm">注册</a>
							</div>
						</div>-->
					</div>

					<!-- Modal -->
					<div aria-hidden="true" aria-labelledby="myModalLabel"
						role="dialog" tabindex="-1" id="myModal" class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title">Forgot Password ?</h4>
								</div>
								<div class="modal-body">
									<p>Enter your e-mail address below to reset your password.</p>
									<input type="text" name="email" placeholder="Email"
										autocomplete="off" class="form-control placeholder-no-fix">

								</div>
								<div class="modal-footer">
									<button data-dismiss="modal" class="btn btn-default"
										type="button">Cancel</button>
									<button class="btn btn-theme" type="button">Submit</button>
								</div>
							</div>
						
					</div>
				</div>
					<!-- modal -->
				</form>
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="row">
						<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
							<hr>
						</div>
						<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4" style="table-layout:fixed;">
							<p class="text_five">更多登陆方式</p>
						</div>
						<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
							<hr>
						</div>
					</div>
					<div class="row">
						<a href="#"><img src="/ibook/style/ibooks/img/微信.png" class="img-responsive img_one"></a>
					</div>
				</div>
			</div>
			</div>
		</div>
	</section>
</body>
</html>