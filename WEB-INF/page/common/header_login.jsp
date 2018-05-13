<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section id="section-panel">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<div class="container row">
			<div class="col-xs-6 col-sm-6">
				<a class="panel-title" href="${pageContext.request.contextPath}/l_system/index/view"> 
					<span class="glyphicon glyphicon-align-justify"></span> 首页
				</a>
			</div>
			<div class="col-xs-2 col-sm-2 col-sm-push-1" style="float:right">
				<div class="nav navbar-nav navbar-right">
					<button type="button" class="btn btn-primary" onClick="window.location.href='${pageContext.request.contextPath}/l_system/logout'">退出</button>
				</div>
			</div>
			</div>
		</div>
<!-- 		<div class="panel-body"> -->
<!-- 			<div class="container"> -->
<!-- 				<a>首页</a> <a>书籍总量</a> <a>书籍分类</a> -->
<!-- 				<div class="nav navbar-nav navbar-right"> -->
<!-- 					<select> -->
<!-- 						<option>图书编目</option> -->
<!-- 						<option>图书题名</option> -->
<!-- 						<option>书籍类型</option> -->
<!-- 					</select> <input type="text" name="" id="">  -->
<%-- 						<a type="button" href="#"><img src="${pageContext.request.contextPath}/ibooks/img/search.png"> 搜索</a> --%>
<!-- 					<a type="button" class="btn"><span class="glyphicon glyphicon-search"></span> 搜索</a> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<div class="nav navbar-right"></div> -->
	</div>
</section>