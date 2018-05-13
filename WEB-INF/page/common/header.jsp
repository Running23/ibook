<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="header black-bg">
	<div class="sidebar-toggle-box">
		<div class="fa fa-bars tooltips" data-placement="right"
			data-original-title="Toggle Navigation"></div>
	</div>
	<!--logo start-->
	<a href="${pageContext.request.contextPath}/l_system/books/view" class="logo"><b>系统后台</b></a>
	<!--logo end-->
	<div class="nav notify-row" id="top_menu"></div>
	<div class="top-menu">
		<ul class="nav pull-right top-menu">
			<li><a class="logout" href="${pageContext.request.contextPath}/l_system/index/view" style="border: 1px solid #7f6b3b;">首页</a></li>
		</ul>
		<ul class="nav pull-right top-menu">
			<li><a class="logout" href="${pageContext.request.contextPath}/l_system/logout" style="border: 1px solid #7f6b3b;">退出</a></li>
		</ul>
	</div>
</header>