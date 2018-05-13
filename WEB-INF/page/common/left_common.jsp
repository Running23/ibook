<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 主页左边悬浮框 -->

	<ol>
		<button class="btn b1" onClick="window.location.href='${pageContext.request.contextPath}/l_system/frontpages/page/personlendview'">
			<img src="${pageContext.request.contextPath}/style/ibooks/img/会员.png" class="im">
		</button>
	</ol>
	<ol>
		<button class="btn b1" onClick="window.location.href='${pageContext.request.contextPath}/l_system/frontpages/page/personreadview'" >
			<img src="${pageContext.request.contextPath}/style/ibooks/img/图书_A搜索.png" class="im">
		</button>
	</ol>

<!--主页左边悬浮框  -->