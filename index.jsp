<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit" /> 

<title>首页</title>
</head>

<body>
	<script type="text/javascript">
		var isMSIE=navigator.userAgent.indexOf("MSIE")>0;
	    var isFirefox=navigator.userAgent.indexOf("Firefox")>0;  
	    var isSafari=navigator.userAgent.indexOf("Safari")>0;  
	    var isCamino=navigator.userAgent.indexOf("Camino")>0;  
	    var isMozilla=navigator.userAgent.indexOf("Gecko/")>0;
 		
		var sURL = "l_system/index/view";
		var sName = "_blank";
		var sFeatures = "left=0px,top=0px,fullscreen=1,toolbar=0,location=0,directories=0,status=0,menuBar=0,scrollBars=1,resizable=1";
		var newwin;
		var nAppName = navigator.appName;
        
		function openIndex() {
			if (isMSIE) { //如果是IE document.all
				newwin=window.open("", sName, sFeatures);
				if (newwin) {
					newwin.moveTo(0, 0);
					newwin.resizeTo(screen.width, screen.height);
					newwin.location.href = sURL;
					window.open('', '_self', '');
            		window.close();
            	} else {
					window.location.href = sURL;
				}
           	} else {
           		window.location.href = sURL;
           	}
		}
		openIndex();
	</script>
	<a href="javascript:void(0)" onclick="javascript:openIndex()">打开主界面</a>
</body>
</html>
