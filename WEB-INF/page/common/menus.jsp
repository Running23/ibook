<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" charset="UTF-8">
$(document).ready(function(){
	menu_class();
})

	function menu_class(){
		var father = $("#father").val();
		var child = $("#child").val();
		$("#sidebar > ul > li:eq(" + father + ") > a").first().addClass(
				"active");
		$("#sidebar > ul > li:eq(" + father + ") > ul > li:eq(" + child + ")")
				.addClass("active");
	}
	function menu_from(url, father, child) {
		$("#father").val(father);
		$("#child").val(child);
		if(url!=''){
			$("#menufrom").attr("action","${pageContext.request.contextPath}" + url);
			$("#menufrom").submit();
		}else{
			$('.active').removeClass('active');
			menu_class();
		}
	}
</script>
<aside>
	<form id="menufrom" method="post" action="">
		<input id="father" type="hidden" name="father" value="${father}"/>
		<input id="child" type="hidden" name="child" value="${child}"/>
	</form>
	<div id="sidebar" class="nav-collapse ">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu" id="nav-accordion">
			<p class="centered">
				<a href="profile.html">
					<img src="/pic/0.jpg" class="img-circle" width="60">
				</a>
			</p>
			<h5 class="centered" style="margin-bottom: 25px">${session.getAttribute('ib').name}</h5>
			<c:forEach items="${sessionScope.menus}" var="menu_f" varStatus="index_f">
				<c:choose>
					<c:when test="${index_f.index==0}">
						<li class="mt">
					</c:when>
					<c:otherwise>
						<li class="sub-menu">
					</c:otherwise>
				</c:choose>
	                <a href="javascript:void(0)" onclick="menu_from('${menu_f.menuUrl}','${index_f.index}','')">
	                    <i class="${menu_f.icon}"></i>
	                    <span>${menu_f.menuName}</span>
	                </a>
	                <c:if test="${menu_f.menus!=null}">
	                	<ul class="sub">
	                		<c:forEach items="${menu_f.menus}" var="menu_c" varStatus="index_c">
	                			<li><a href="javascript:void(0)" onclick="menu_from('${menu_c.menuUrl}','${index_f.index}','${index_c.index}')">
	                				${menu_c.menuName}</a></li>
	                		</c:forEach>
						</ul>
	                </c:if>
	            </li>
			</c:forEach>
		</ul>
		<!-- sidebar menu end-->
	</div>
</aside>
<!--sidebar end-->