<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>图书信息</title>
<%-- Bootstrap core CSS --%>
<link href="<%=basePath%>/style/assets/css/bootstrap.css" rel="stylesheet">
<link href="<%=basePath%>/style/assets/css/bootstrap.min.css" rel="stylesheet">
<%--external css--%>
<link href="<%=basePath%>/style/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet" />

<%-- Custom styles for this template --%>
<link href="<%=basePath%>/style/assets/css/style.css" rel="stylesheet">
<link href="<%=basePath%>/style/assets/css/style-responsive.css"
	rel="stylesheet">

<%--ibooks styles for this template--%>
<link href="<%=basePath%>/style/ibooks/css/style.css" rel="stylesheet">
<script src="<%=basePath%>/style/assets/js/jquery.js"></script>
<style type="text/css">
    #b {
        padding-top: 10px;
    }
    #a {
        -moz-columns: 300px 2;
        padding-left: 50px;
        -webkit-columns: 300px 2;
        text-align: center;
        column-gap: normal;
        column-gap: 0px;
        column-fill: balance
    }
    .t {
        border-collapse: separate;
        border-spacing: 5px;
    }
</style>
</head>
<body>
	<%-- 导入头部 --%>
	<%@ include file="/WEB-INF/page/common/header.jsp"%>
	<%-- 导入菜单 --%>
	<%@ include file="/WEB-INF/page/common/menus.jsp"%>
	
	<!-- main页面 -->
	<section id="main-content">
		<section>
		<nav style="height: 50px;width: 100%;">
		    <div class="container-fluid">
		
		        <!--向左对齐-->
<!-- 		        <p class="navbar-text navbar-left glyphicon ">首页</p> -->
		
<!-- 		        <p class="navbar-text navbar-left glyphicon glyphicon-chevron-right">书籍类型</p> -->
		
<!-- 		        <p class="navbar-text navbar-left glyphicon glyphicon-chevron-right">向左对齐-文本</p> -->
		        <b class="navbar-text navbar-left glyphicon "><a href="${pageContext.request.contextPath}/l_system/librarian/view">首页</a>>>书架管理</b>
		        <!--向右对齐-->
		        <div class="search-box" style="text-align: right;">
		

		
		

		        </div>
		
		    </div>
		</nav>
		</setion>
		<div style="padding-top:10px ;">
		<div class="col-lg-12">
		
		<div class="content-panel">
		<h4><span class="glyphicon glyphicon-tasks"></span>目前设备数：1</h4>
		<section id="no-more-tables">
		<table class="table table-bordered table-striped table-condensed cf">
		    <thead class="cf">
		    <tr>
		        <th>书架编号</th>
		        <th>书架设备ip</th>
		        <th class="numeric">书架设备端口</th>
		        <th class="numeric">书架设备状态</th>
		        <th class="numeric">书架条形码</th>
		        <th class="numeric">架位号</th>
		    </tr>
		    </thead>
		    <tbody>
		    <tr>
		        <td data-title="Code">001</td>
		        <td data-title="Company">192.168.12.1</td>
		        <td class="numeric" data-title="Price">9091</td>
		        <td class="numeric" data-title="Change">停用</td>
		        <td class="numeric" data-title="Change %">24561</td>
		        <td class="numeric" data-title="Open">4</td>
		    </tr>
		    </tbody>
		</table>
		
		</section>
		</div>
		</div>
		</div>
		</section>

		<footer class="navbar-fixed-bottom" style="width: 100%;">
		    <div style="width: 85%;">
		        <div style="float: left;padding:10px 0 0 5px;">
		
		            <select class="navbar-left">
		                <option>10</option>
		                <option>15</option>
		                <option>20</option>
		                <option>25</option>
		                <option>30</option>
		            </select>
		            <span class="separatrix navbar-left">|</span>
		            <a class="glyphicon glyphicon-fast-backward navbar-left"></a>
		            <a class="glyphicon glyphicon-backward navbar-left"></a>
		            <span class="separatrix navbar-left">|</span>
		            <span class="navbar-left">第</span>
<!-- 		            <input type="text" class="navbar-left" style="height: 20px;"/> -->
		            <span class="navbar-left">1页/共5页</span>
		            <span class="separatrix navbar-left">|</span>
		            <a class="glyphicon glyphicon-forward navbar-left"></a>
		            <a class="glyphicon glyphicon-fast-forward navbar-left"></a>
		            <span class="separatrix navbar-left">|</span>
		            <a class="glyphicon glyphicon-refresh navbar-left"></a>
		        </div>
		        <div style="float: right;">
		            <a class="glyphicon glyphicon-circle-arrow-up navbar-right"></a>
		            <span class="navbar-right">显示1到1条&nbsp;共1条</span>
		        </div>
		     </div>
		</footer>
 	<!-- /MAIN CONTENT -->
	</section>

</body>
<script src="<%=basePath%>/style/assets/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/style/assets/js/jquery.dcjqaccordion.2.7.js" class="include" type="text/javascript"></script>
<script src="<%=basePath%>/style/assets/js/jquery.scrollTo.min.js"></script>
<script src="<%=basePath%>/style/assets/js/jquery.nicescroll.js" type="text/javascript"></script>
<%--common script for all pages--%>
<script src="<%=basePath%>/style/assets/js/common-scripts.js"></script>
<script src="<%=basePath%>/ibooks/js/jquery/jqueryJSONToDate" type="text/javascript"></script>

<script>
	var htmlHeight
	/* $(function() {
		htmlHeight();
		findPage();
	}) */
	function selectOnchange(){
		$("#hidden_input").attr("name", $('select[name="parameName"]').val());
	}
	
	function page(page){
		$("#page").val(page);
		findPage();
	}
	
	function findPage() {
		$("#hidden_input").val($("input[name='parameValue']").val())
		$.ajax({
			url: '<c:url value="/l_system/bookreack/fingPage"/>',
			type:'post',
			data: $('#bookreackList_form').serialize(),
			dataType:'json',
			success: function(json){
				$("#page").val(json.page);
				$("#pages").text("页/共"+json.pages+"页");
				$("#rows").text("显示"+json.startRow+"到"+json.endRow+"条,共"+json.total+"记录");
				$("table tbody").empty();
				if(json.page==1){
					$("#home_page").attr("disabled", "disabled");
					$("#previous_page").attr("disabled", "disabled");
				}else{
					$("#home_page").removeAttr("disabled");
					$("#home_page").attr("onclick","page(1)");
					$("#previous_page").removeAttr("disabled");
					$("#previous_page").attr("onclick","page("+(json.page-1)+")");
				}
				if(json.page == json.pages){
					$("#next_page").attr("disabled", "disabled");
					$("#last_page").attr("disabled", "disabled");
				}else{
					$("#next_page").removeAttr("disabled");
					$("#next_page").attr("onclick","page("+(json.page+1)+")");
					$("#last_page").removeAttr("disabled");
					$("#last_page").attr("onclick","page("+json.pages+")");
				}
				var status_str = "k";
				$.each(json.rows,function(index, item){
					if(item.state==0){
						status_str="空置"
					}else if(item.state == 1){
						status_str="占用"
					}else if(item.state == -1){
						status_str="修复中"
					}
					item.bookBarcode = item.bookBarcode!=null?item.bookBarcode:"--"
					item.bookTitl = item.bookTitl!=null?item.bookTitl:"--"
					$("table tbody").append('<tr><td>'+item.bookraceNo+'</td>'
					+'<td>'+item.shelfNo+'</td>'
					+'<td>'+item.bookBarcode+'</td>'
					+'<td>'+item.bookTitl+'</td>'
					+'<td>'+status_str+'</td></tr>')
				})
			}
		});
	}
	
	function htmlHeight() {
		htmlHeight = $(window).height();
		var height_table = $("#no-more-tables").height() / htmlHeight;
		console.log(height_table);
		if (height_table < 0.56) {
			$("#no-more-tables").css("padding-bottom",
					htmlHeight * (0.56 - height_table));
		}
	}
</script>
</html>