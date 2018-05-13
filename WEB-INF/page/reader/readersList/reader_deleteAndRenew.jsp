<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
	<title>删除读者</title>
    <link href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css" rel="stylesheet">
    <!--external css-->
    <link href="<%=basePath%>/style/ibooks/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/extend_asset_css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/gritter/css/jquery.gritter.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/lineicons/style.css">
	  <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/admin.css" />
	  <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/amazeui.min.css" />
    <link href="<%=basePath%>/style/ibooks/css/ext_assets_css/style.css" rel="stylesheet">
    <link href="<%=basePath%>/style/ibooks/css/ext_assets_css/style-responsive.css" rel="stylesheet"/>
    
	<script src="<%=basePath%>/style/ibooks/js/script.js"></script>
    <script src="<%=basePath%>/style/ibooks/js/chart-master/Chart.js"></script>
    <!--     引入日期插件 -->
    <script src="<%=basePath%>/style/ibooks/datepicker/WdatePicker.js"></script>
    
    
    <!-- js placed at the end of the document so the pages load faster -->
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery-1.8.3.min.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript" src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.scrollTo.min.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.sparkline.js"></script>
	
	
	<!--common script for all pages-->
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/common-scripts.js"></script>
	<script type="text/javascript" src="<%=basePath%>/style/ibooks/js/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="<%=basePath%>/style/ibooks/js/ext_assets_js/gritter-conf.js"></script>
	
	<!--script for this page-->
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/sparkline-chart.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/zabuto_calendar.js"></script>
	<script type="text/javascript" src="<%=basePath%>/style/ibooks/js/script.js"></script>
	<script type="text/javascript" src="<%=basePath%>/style/ibooks/js/common/data_transform.js"></script>

    
    <style>
        body {
            background-image: url(<%=basePath%>/style/ibooks/img/5.jpg);
        }
    </style>
    <script>
    $('#myModal1').modal(show);
    $('#myModal4').modal(show);
    $('#myModal5').modal(show);
    </script>
</head>
<body> 
	<!-- 导入头部 -->
	<%@ include file="/WEB-INF/page/common/header.jsp"%>
	<!-- 导入菜单 -->
	<%@ include file="/WEB-INF/page/common/menus.jsp"%>
	
	<!-- main页面 -->
<!--main content start-->
<section id="main-content">
    <section style="background-image: url(<%=basePath%>/style/ibooks/img/5.jpg);">

        <p style="float: left;padding: 70px 0 0 10px;font-size: 15px;"><b>首页 >>会员管理 >>删除会员</b></p>
        <div style="float: right;padding-top: 65px;">
        <button id="flush"  class="am-btn am-btn-default am-btn-xs am-text-success am-round" style="background-color:  #ffd777;"><span class="am-icon-refresh" title="查看"></span></button>
        </div>
        
        <nav style="height: 35px;background-color: #FFEBBB;width: 100%;padding-top: 100px;">

        </nav>

        <div class="search-box" style="text-align: center;padding-top: 20px;font-size: 14px;padding-right: 10px;">
			
			
            
            	日期范围: 
                <input type="date"  id="mydate1" style="height: 26px;" placeholder=" 起始时间" readonly="true" onfocus="WdatePicker({'skin':'whyGreen','dateFmt':'yyyy-MM-dd HH:mm:ss'});"/> -
                <input type="date"  id="mydate2" style="height: 26px;" placeholder=" 结束时间" readonly="true" onfocus="WdatePicker({'skin':'whyGreen','dateFmt':'yyyy-MM-dd HH:mm:ss'});"/>
                <input type="text" name="mytext" id="mytext"  placeholder="输入读者名称/电话/邮箱"  style="width: 200px;"/>
               	<button id="search" class="btn-default navbar-btn " style="background-color: #ffd777;">搜索用户</button>
			

        </div>
	
	<div style="padding-left: 30px;padding-top: 20px;padding-right: 30px;">
    <nav style="height: 40px;background-color: #ffd777;width: 100%;">
        <button data-target="#myModal5" data-toggle="modal" data-backdrop="static" class=" btn-default navbar-btn am-icon-trash-o" style="background-color: #DD514C;">批量删除</button>
        <p style="float: right;padding-top: 10px;">共有数据:<spand id="total"></spand>条</p>
    </nav>

	</div>

    </section>
    <div style="padding: 10px 30px 0 0;float: right;"><b>从当前表中检索：</b>
    <input id="searchByName" type="search" placeholder="读者姓名"/></div>
    <div class="card-content am-table am-table-bordered am-table-radius am-table-striped">
        <div style="width: 100%;padding: 20px 30px 0 30px ;overflow-x:scroll;">
            <div class="table-responsive" style="background-color: #F8F1E5;">
               
                <table  class="table table-hover sortable" id="readers_list">
                    <thead>
                    <tr>
                    	<th class="table-check"><input type="checkbox" id="check_all"/></th>
                        <th>ID</th>
                        <th>用户名</th>
                        <th>昵称</th>
                        <th>性别</th>
                        <th>手机</th>
                        <th>邮箱</th>
                        <th>地址</th>
                        <th>加入时间</th>
                        <th>状态</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
                <div id="controls">
                    <div id="perpage" style="float: left;">
                        <select onchange="selectOption()" >
                            <option value="5" selected="selected">5</option>
                            <option value="10" >10</option>
                            <option value="20">20</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                        </select>
                    </div>
                    <div id="navigation" style="float: left;">
                        <img src="<%=basePath%>/style/ibooks/img/first.gif" width="16" height="16" alt="First Page"
                             onclick="move(-2)"/>
                        <img src="<%=basePath%>/style/ibooks/img/previous.gif" width="16" height="16" alt="First Page" onclick="move(-1)"/>
                        <span >第</span>
                        <input id="page" style="height: 16px;width: 16px;" type="text" value="1"/>
                        <span>页/共<span id="showPage">0</span>页</span>
                        <img src="<%=basePath%>/style/ibooks/img/next.gif" width="16" height="16" alt="First Page" onclick="move(1)"/>
                        <img src="<%=basePath%>/style/ibooks/img/last.gif" width="16" height="16" alt="Last Page" onclick="move(2)"/>
                    </div>
                    <div id="text" style="float: right;">当前页面<span id="currentpage"></div>
                </div>
            </div>
        </div>
    </div>
</section>
 <div class="modal fade" id="myModal1">
              <div class="modal-dialog">
              <div class="modal-content">
              <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">信息</h4>
              </div>
              <div class="modal-body" style="text-align: center;">
              <ul class="list-unstyled">
              <h3>确定要还原已经删除的读者吗？</h3>
    		  </ul>
              </div>
              <div class="modal-footer">
              <form id="renewForm">
              <!-- 存放隐藏域 -->
              <input type="hidden"  id="renewId" name="readerId" >
              <input type="hidden"  name="status" value="1">
              <input type="hidden"  name="readerStatus" value="1">
              </form>
              <button type="button" class="btn btn-default" data-dismiss="modal" id="renewBton">还原</button>
              <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
              </div>
              </div>
              </div>
  </div>
  
  <div class="modal fade" id="myModal4">
              <div class="modal-dialog">
              <div class="modal-content">
              <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">信息</h4>
              </div>
              <div class="modal-body" style="text-align: center;">
              <ul class="list-unstyled">
              <h3>确定删除吗？</h3>
    		  </ul>
              </div>
              <div class="modal-footer">
              <form id="deleteWithUpdate">
              <!-- 存放隐藏域 -->
              <input type="hidden"  id="deleteId" name="readerId" >
              </form>
              <button type="button" class="btn btn-default" data-dismiss="modal" id="deleteBton">确定</button>
              <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
              </div>
              </div>
              </div>
  </div>
  
  <div class="modal fade" id="myModal5">
              <div class="modal-dialog">
              <div class="modal-content">
              <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">批量删除</h4>
              </div>
              <div class="modal-body" style="text-align: center;">
              <ul class="list-unstyled">
              <h3>你确定要批量删除吗？</h3>
    		  </ul>
              </div>
              <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal" id="deleteAll">确定</button>
              <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
              </div>
              </div>
              </div>
  </div>
<footer><p style="float: right;"><img src="<%=basePath%>/style/ibooks/img/8.jpg"></p></footer>
</body>
<script type="text/javascript" src="<%=basePath%>/style/ibooks/js/readers/reader_deleteAndRenew.js"></script>
</html>