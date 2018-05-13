<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
	<title>首页</title>

	<script src="<%=basePath%>/style/indexassets/js/jquery.min.js"></script>
</head>
<body>
<h1>测试</h1>
	<input type="text" id="message"><button id="send">发送</button>
	
</body>

<script type="text/javascript">

$("#send").click(function(){
	var $message=$("#message").val();
	$.ajax({
		type:'post',
		url:'/ibook/l_system/test/send',
		data:'message='+$message,
		success:function(data){
			alert(data.massage);
		}
	});
	
});
</script>
</html>