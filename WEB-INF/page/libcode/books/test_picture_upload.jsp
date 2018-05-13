<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试图片上传功能</title>
<script src="<%=basePath%>/style/assets/js/jquery-1.8.3.min.js"></script>
</head>
<body> 


<!-- <form id="BookFomr"  method="post" enctype="multipart/form-data"> -->

<!-- <table> -->

<!-- <tr> -->
<!-- 	<td>商品图片</td> -->
<!-- 	<td> -->

<!-- 		<input id="picfile" type="file"  name="picfile"/>  -->
<!-- 	</td> -->
<!-- </tr> -->

<!-- <tr> -->
<!-- <td  align="center"><input type="button" value="提交" onclick="BookFomr()"/> -->
<!-- </td> -->
<!-- </tr> -->
<!-- </table> -->

<!-- </form> -->


<form id="uploadPic" action="#" enctype="multipart/form-data">
    <input type="file" name="file">
<!--     <a href="javascript:savePic();" class="btn green"> 提交 </a> -->
    <input type="button" value="提交" onclick="savePic()"/>
</form>


<script type="text/javascript">
//     function BookFomr(){
//     	alert("开始上传");
//    		//var data = $('#BookFomr').serialize();
//    		var data =new FormData($( "#BookFomr" )[0]);  
//    		//data="picfile"
//    		alert("上传的数据是："+data);
//    		//data = decodeURIComponent(data,true);
//        	$.ajax({
//    		type: 'post',
//    		url:'${pageContext.request.contextPath}/l_system/books/save',
//    		data: data,
//    		success: function(data){
//    				alert("加载成功");
//    			}
//     	});

//     }
    
    
    function savePic(){
        var formData = new FormData($( "#uploadPic" )[0]);  
        var ajaxUrl = "${pageContext.request.contextPath}/l_system/books/save";
        //alert(ajaxUrl);
        //$('#uploadPic').serialize() 无法序列化二进制文件，这里采用formData上传
        //需要浏览器支持：Chrome 7+、Firefox 4+、IE 10+、Opera 12+、Safari 5+。
        $.ajax({
            type: "POST",
            //dataType: "text",
            url: ajaxUrl,
            data: formData,
            async: false,  
            cache: false,  
            contentType: false,  
            processData: false,
            success: function (data) {
            alert(data);
            },
            error: function(data) {
                alert("error:"+data.responseText);

             }
        });
        return false;
    }
</script>
</body>
</html>