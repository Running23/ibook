<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!-- <nav class="navbar navbar-default navbar-fixed-top"> -->

<div class="container">
	<div class="navbar-header">
		
		<button class="btn a1"  onClick="window.location.href='${pageContext.request.contextPath}/l_system/index/login/view'">
			<spand class="new1">登陆</spand >
		</button>
		<button class="btn a2" onClick="window.location.href='${pageContext.request.contextPath}/l_system/reader/signview'">
			<spand class="new1">注册</spand >
		</button>
		<button class="btn a3" onClick="window.location.href='${pageContext.request.contextPath}/l_system/reader/personview'">
			<spand class="new2">个人中心</spand >
		</button>
		<button class="btn a3" onClick="window.location.href='${pageContext.request.contextPath}/l_system/addpage/resourcepass'">
			<spand class="new2">资源通道</spand >
		</button>
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#navbar-collapse">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
	</div>
	<div class="collapse navbar-collapse" id="navbar-collapse">
	                 <ul class="nav navbar-nav navbar-right">
						<c:if test="${sessionScope.ib != null }">
							<li class="dropdown n3">
							     <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white;">
							          [${ib.loginId }]
							          <strong class="caret"></strong>
							     </a>
								<ul class="dropdown-menu">
									<li>
									<a href="${pageContext.request.contextPath}/l_system/logout" class="glyphicon" style="margin-left:0px;"> 退出帐号</a>
									</li>
									<shiro:hasRole name="admin">
									<li>
										<a href="${pageContext.request.contextPath}/l_system/data_count/sys_count/view" class="glyphicon" style="margin-left:20px;"> 后台管理</a>
									</li>
									</shiro:hasRole>
								</ul>
							</li>
						</c:if>
			      </ul>
		<div class="nav navbar-nav navbar-right">
			<li class="n3"><a href="${pageContext.request.contextPath}/l_system/addpage/interaction" style="color: white;">互动</a></li>
			<li class="n3"><a href="${pageContext.request.contextPath}/l_system/addpage/classify"    style="color: white;"  >分类</a></li>
			<li class="n3"><a href="${pageContext.request.contextPath}/l_system/frontpages/page/recommendview" style="color: white;">推荐</a></li>
			<li class="n3"><a href="${pageContext.request.contextPath}/l_system/index/view" style="color: white;">首页</a></li>
		</div>
	</div>

</div>
<!-- </nav> -->