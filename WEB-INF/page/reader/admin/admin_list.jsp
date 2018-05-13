<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <title>管理员列表</title>
    <link href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css" rel="stylesheet">
    <!--external css-->
    <link href="<%=basePath%>/style/ibooks/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/extend_asset_css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/gritter/css/jquery.gritter.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/lineicons/style.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/admin.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/amazeui.min.css" />
    <link href="<%=basePath%>/style/ibooks/css/ext_assets_css/style.css" rel="stylesheet">
    <link href="<%=basePath%>/style/ibooks/css/ext_assets_css/style-responsive.css" rel="stylesheet">
    
	
    <script src="<%=basePath%>/style/ibooks/js/chart-master/Chart.js"></script>
    
    
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
	<!-- md5加密 -->
	<script src="<%=basePath%>/style/ibooks/js/common/md5.js"></script>
	    
    <style>
        body {
            background-image: url(<%=basePath%>/style/ibooks/img/5.jpg);
        }
    </style>
    <script>
    $('#myModal1').modal(show);
    $('#myModal2').modal(show);
    $('#myModal4').modal(show)
    $('#myModal6').modal(show)
    </script>
</head>

<body> 
	<!-- 导入头部 -->
	<%@ include file="/WEB-INF/page/common/header.jsp"%>
	<!-- 导入菜单 -->
	<%@ include file="/WEB-INF/page/common/menus.jsp"%>
	
	<!-- main页面 -->
<section id="main-content">
    <section style="background-image: url(<%=basePath%>/style/ibooks/img/5.jpg);">

        <p style="float: left;padding: 70px 0 0 10px;font-size: 15px;"><b>首页 >>馆员管理>>管理员列表</b></p>
        <div style="float: right;padding-top: 65px;">
        <button id="flush" class="am-btn am-btn-default am-btn-xs am-text-success am-round" style="background-color:  #ffd777;"><span class="am-icon-refresh" title="查看"></span></button>
        </div>
        
        <nav style="height: 35px;background-color: #FFEBBB;width: 100%;padding-top: 100px;">

        </nav>
	<div style="padding-left: 30px;padding-top: 20px;padding-right: 30px;">
    <nav style="height: 40px;background-color: #ffd777;width: 100%;">
        <button data-target="#myModal5" data-toggle="modal" data-backdrop="static" class=" btn-default navbar-btn am-icon-trash-o" style="background-color: #DD514C;">批量删除</button>
        <button data-target="#myModal6" data-toggle="modal" data-backdrop="static"  class=" btn-default navbar-btn am-icon-laptop" style="background-color: #5A98DE;" id="getDateTime">添加管理员</button>
        <p style="float: right;padding-top: 10px;">共有数据:<spand id="total"></spand>条</p>
    </nav>

	</div>

    </section>
    <div style="padding: 10px 30px 0 0;float: right;"><b>从当前表中检索：</b>
    <input id="searchByName" type="search" placeholder="读者姓名"/></div>
    <div class="card-content am-table am-table-bordered am-table-radius am-table-striped">
        <div style="width: 100%;padding: 20px 30px 0 30px ;overflow-x:scroll;">
            <div class="table-responsive" style="background-color: #F8F1E5;">
               
                <table id="readers_list" class="table table-hover sortable" id="table">
                    <thead>
                    <tr>
                    	<th class="table-check"><input type="checkbox" id="check_all"/></th>
                        <th>用户名</th>
                        <th>手机</th>
                        <th>邮箱</th>
                        <th>角色</th>
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
              <h3>确定要停用？</h3>
    		  </ul>
              </div>
              <div class="modal-footer">
              <form id="statusEdit">
              <!-- 存放隐藏域 -->
              <input type="hidden"  id="stopreaderId"  name="readerId" >
              <input type="hidden"  id="editreaderStatus"  name="readerStatus" value="0">
              </form>
              <button type="button" class="btn btn-default" data-dismiss="modal" id="stopBton">确定</button>
              <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
              </div>
              </div>
              </div>
  </div>
  <div class="modal fade" id="myModal2">
              <div class="modal-dialog">
              <div class="modal-content">
              <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">编辑</h4>
              </div>
			  <form class="form-horizontal" id="infoEdit">
              <div class="modal-body" style="text-align: left;">
              <!-- 存放隐藏域 -->
			  <input type="hidden"  id="editreaderId"  name="readers.readerId" >
			  <input type="hidden"    name="readers.roleStatus" value="1">
			  <input type="hidden" name="readerStatus" value="1">
			  <div class="form-group">
			    <label for="readerName" class="col-md-3 col-xs-5 control-label" style="text-align: right;">管理员：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control"  name="readers.readerName" id="readerName">
			    </div>
			  </div>
			  
			  
			  <div class="form-group">
			    <label for="readerName" class="col-md-3 col-xs-5 control-label" style="text-align: right;">初始密码：</label>
			    <div class="col-sm-5">
			      <input type="password" class="form-control"  name="password">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="readerName" class="col-md-3 col-xs-5 control-label" style="text-align: right;">确认密码：</label>
			    <div class="col-sm-5">
			      <input id="editPs" type="password" class="form-control"  name="readers.password">
			    </div>
			  </div>
			  		  			  

			  <div class="form-group">
			    <label for="phone" class="col-md-3 col-xs-5 control-label" style="text-align: right;">手&nbsp;&nbsp;&nbsp;机：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control"  placeholder="手机" name="readers.phone" id="phone">
			    </div>
			  </div>			  
			  
			  <div class="form-group">
			    <label for="readerNameemail" class="col-md-3 col-xs-5 control-label" style="text-align: right;">邮&nbsp;&nbsp;&nbsp;箱：</label>
			    <div class="col-sm-5">
			      <input type="email" class="form-control"  placeholder="邮箱" name="readers.email" id="email">
			    </div>
			  </div>			  
			  <div class="form-group">
			    <label for="content" class="col-md-3 col-xs-5 control-label" style="text-align: right;">角&nbsp;&nbsp;&nbsp;色：</label>
			    <div class="col-sm-3">
			  	<select class="form-control" name="ReadersRoles.roleId" id="role_select">
			  	</select>
			   </div>
			  </div>			  
			  <div class="form-group">
			    <label for="content" class="col-md-3 col-xs-5 control-label" style="text-align: right;">备&nbsp;&nbsp;&nbsp;注：</label>
			    <div class="col-sm-8">
			  	<textarea class="form-control" rows="2" name="readers.content"></textarea>
			   </div>
			  </div>			  
			  </form>			  
              </div>
              <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal" id="editSubmit">提交</button>
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
              <input type="hidden"  name="status" value="0">
              <input type="hidden"  name="readerStatus" value="0">
              <input type="hidden"  name="roleStatus" value="0">
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
  <div class="modal fade" id="myModal6">
              <div class="modal-dialog">
              <div class="modal-content">
              <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">添加管理员</h4>
              </div>
			  <form class="form-horizontal" id="addReader">
              <div class="modal-body" style="text-align: left;">
				<!-- 隐藏域 -->
			  <input type="hidden" name="readers.readerStatus" value="1">
			  <div class="form-group">
			    <label for="readerName" class="col-md-3 control-label" style="text-align: right;">管理员：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control"  name="readers.readerName">
			    </div>
			  </div>
			  
			  
			  <div class="form-group">
			    <label for="readerName" class="col-md-3 control-label" style="text-align: right;">初始密码：</label>
			    <div class="col-sm-5">
			      <input type="password" class="form-control"  >
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="readerName" class="col-md-3 control-label" style="text-align: right;">确认密码：</label>
			    <div class="col-sm-5">
			      <input id="ps" type="password" class="form-control"  name="readers.password">
			    </div>
			  </div>
			  		  			  
			  <div class="form-group">
			    <label for="sex" class="col-md-3 control-label" style="text-align: right;">性&nbsp;&nbsp;&nbsp;别：</label>
			    <div class="col-sm-5">
					<label class="radio-inline">
					  <input type="radio" name="readers.sex"  value="0"> 男
					</label>
					<label class="radio-inline">
					  <input type="radio" name="readers.sex"  value="1"> 女
					</label>
					<label class="radio-inline">
					  <input type="radio" name="readers.sex"  value="2"> 保密
					</label>					
			    </div>
			  </div>

			  <div class="form-group">
			    <label for="phone" class="col-md-3 control-label" style="text-align: right;">手&nbsp;&nbsp;&nbsp;机：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control"  placeholder="手机" name="readers.phone">
			    </div>
			  </div>			  
			  
			  <div class="form-group">
			    <label for="readerNameemail" class="col-md-3 control-label" style="text-align: right;">邮&nbsp;&nbsp;&nbsp;箱：</label>
			    <div class="col-sm-5">
			      <input type="email" class="form-control"  placeholder="邮箱" name="readers.email">
			    </div>
			  </div>			  
			  <div class="form-group">
			    <label for="content" class="col-md-3 control-label" style="text-align: right;">角&nbsp;&nbsp;&nbsp;色：</label>
			    <div class="col-sm-3">
			  	<select class="form-control" name="readersRoles.roleId" id="roleadd_select">
			  	</select>
			   </div>
			  </div>			  
			  <div class="form-group">
			    <label for="content" class="col-md-3 control-label" style="text-align: right;">备&nbsp;&nbsp;&nbsp;注：</label>
			    <div class="col-sm-8">
			  	<textarea class="form-control" rows="2" name="content"></textarea>
			   </div>
			  </div>			  
			  </form>			  
              </div>
              <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal" id="add">添加</button>
              </div>
              </div>
              </div>
  </div>

<footer><p style="float: right;"><img src="<%=basePath%>/style/ibooks/img/8.jpg"></p></footer>

</body>
<script type="text/javascript" src="<%=basePath%>/style/ibooks/js/role/admin_list.js"></script>
</html>