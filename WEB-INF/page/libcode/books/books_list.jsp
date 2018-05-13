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
<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>图书列表</title>
<!-- Bootstrap core CSS -->
<link href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css" rel="stylesheet">
<!--external css-->
<link href="<%=basePath%>/style/ibooks/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="<%=basePath%>/style/ibooks/css/extend_asset_css/style.css" rel="stylesheet">
<link href="<%=basePath%>/style/ibooks/css/ext_assets_css/style-responsive.css" rel="stylesheet">
<!--ibooks styles for this template-->
<%-- <link href="<%=basePath%>/style/ibooks/css/style.css" rel="stylesheet"> --%>
<!--external css-->
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/extend_asset_css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/gritter/css/jquery.gritter.css"/>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/lineicons/style.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/admin.css" />
<!-- fjr -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/table_style.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/amazeui.min.css" />
<link href="<%=basePath%>/style/ibooks/css/ext_assets_css/style-responsive.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/books_list.css" />

<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.dcjqaccordion.2.7.js" class="include" type="text/javascript"></script>
<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.scrollTo.min.js"></script>
<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.nicescroll.js" type="text/javascript"></script>
<!--common script for all pages-->
<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/common-scripts.js"></script>
<script src="<%=basePath%>/style/ibooks/js/jquery/jqueryJSONToDate" type="text/javascript"></script>
<script src="<%=basePath%>/style/ibooks/js/chart-master/Chart.js"></script>
<script src="<%=basePath%>/style/ibooks/js/common/data_transform.js"></script>
<script src="<%=basePath%>/style/ibooks/js/books/books_list.js"></script>
</head>
<body>
	<!-- 导入头部 -->
	<%@ include file="/WEB-INF/page/common/header.jsp"%>
	<!-- 导入菜单 -->
	<%@ include file="/WEB-INF/page/common/menus.jsp"%>
	
	<!-- main页面 -->
	<section id="main-content">
		<section>
		<nav style="height: 50px;width: 100%;">
		    <div class="container-fluid ">
		
				<b class="navbar-text navbar-left glyphicon "><a href="${pageContext.request.contextPath}/l_system/librarian/view">首页</a>>>图书列表</b>
		        <!--向右对齐-->
		        <div class="search-box " style="text-align: right;">
		            <button type="button" class=" btn btn-default" data-toggle="modal" data-target="#myModal2" data-backdrop="static" title="导入"  id="in">导入</button>
		            <button type="button"  class=" btn btn-default" id="out">导出</button>
		            <select id="select" class="btn btn-default" style="height: 35px" >
		                <option selected = "selected"  value = "bookTitl">书名</option>
		                <option value = "author">作者</option>
		                <option value = "bookTypes">分类号</option>
		                <option value = "bookNumber">ISBN</option>
		            </select>
		            <input type="text" id="mytext" placeholder="Search..." required=""  style="width: 150px;height: 39px; margin-top:5px;">
		            <button type="button" class=" btn btn-default" id="search">搜索</button>
		        </div>		
		    </div>
		    
		</nav>
		</setion>

		<div class="card-content am-table am-table-bordered am-table-radius am-table-striped">
        <div style="width: 100%;padding: 5px 5px 0 5px ;overflow-x:scroll;">
            <div class="table-responsive" style="background-color: #F8F1E5;">
               
                <table id="readers_list" class="table table-hover sortable table_style_fixed" id="table" >
                    <thead>
                    <tr>
                        <th>书名</th>
                        <th>作者</th>
                        <th>出版社</th>
                        <th>出版时间</th>
                        <th>索引号/分类号</th>
                        <th>状态</th>
                        <th>购买时间</th>
                        <th>简介</th>
                        <th>选择</th>
                        
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
                <div id="controls">
                    <div id="perpage" style="float: left; width=16px; height=5px;">
                        <select onchange="selectOption()" >
                            <option value="4" selected="selected">4</option>
                            <option value="8" >8</option>
                            <option value="16">16</option>
                            <option value="32">32</option>
                            <option value="64">64</option>
                        </select>
                    </div>
                    <div id="navigation" style="float: left;">
                        <img src="<%=basePath%>/style/ibooks/img/first.gif" width="16" height="16" alt="First Page"
                             onclick="move(-2)"/>
                        <img src="<%=basePath%>/style/ibooks/img/previous.gif" width="16" height="16" alt="First Page" onclick="move(-1)"/>
                        <span >第</span>
                        <input id="page" style="height: 25px; width:30px; margin:0px 0px 4px 0px; "  value="1"/>
                        <span>页/共<span id="showPage">0</span>页</span>
                        <img src="<%=basePath%>/style/ibooks/img/next.gif" width="16" height="16" alt="First Page" onclick="move(1)"/>
                        <img src="<%=basePath%>/style/ibooks/img/last.gif" width="16" height="16" alt="Last Page" onclick="move(2)"/>
                    </div>
                    <div id="text" style="float: right;">当前页面<span id="currentpage">1</span></div>
                </div>
            </div>
        </div>
  <div class="modal fade" id="myModal2">
              <div class="modal-dialog">
              <div class="modal-content">
              <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">选择导入</h4>
              </div>
              <div class="modal-body" style="text-align: center;">
              <ul class="list-unstyled">
    		  </ul>
              </div>
              <div class="modal-footer">
              <form id="excelfile">
              <input name="excelfile" type="file"/>
              </form>
              <button type="button" class="btn btn-default" data-dismiss="modal" id="inButton">确定</button>
              <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
              </div>
              </div>
              </div>
  </div>
</body>
</html>