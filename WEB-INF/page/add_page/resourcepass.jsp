<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>资源通道</title>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/my2.css" />
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
		<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.simplePagination.js"></script>
		<!--css和js脚本写在外面  -->
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/addpage_css/resourcepass.css" />
		<script src="<%=basePath%>/style/ibooks/js/addpage_js/resourcepass.js"></script>
		
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=KjEQlPmSO1aM6G9cFGCQd7WL0arGC6zE"></script>
		<!-- 导入区域限制的js库 -->
		<script type="text/javascript" src="http://api.map.baidu.com/library/AreaRestriction/1.2/src/AreaRestriction_min.js"></script>
		<style type="text/css">
			body, html,#mymap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";font-size:15px;}
		</style>
	</head>
	<body>
			<nav class="navbar navbar-default navbar-fixed-top" >
			<!-- 导入导航栏内容 -->
			<%@ include file="/WEB-INF/page/common/index_common.jsp"%>
			</nav>
			<!-- 写页面代码 -->

			<div id="mymap" style="position: display;"/>

	</body>

</html>
