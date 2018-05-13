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
    <title>角色管理</title>

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
	<script type="text/javascript" src="<%=basePath%>/style/ibooks/js/role/admin_role.js"></script>    
    <style>
        body {
            background-image: url(<%=basePath%>/style/ibooks/img/5.jpg);
        }
    </style>
    <script>
	//角色编辑模块
	//获取角色id
	function getRoleId(id){
		var $val=id;
		$("#roleId").val($val);
		var $appointJsonData = {
				"roleid" : $val
			};
		$.ajax({
				type : "POST",
				url : "/ibook/l_system/RolePermission/data/getRolePermission",
				async : false,
				dataType : "json",
				contentType : "application/json",
				data : JSON.stringify($appointJsonData),
				success : function(data) {
					//数据显示
					$("#roleName").val(data.roles.roleName);
					$("#roleContent").val(data.roles.roleContent);
					
					$('#checkbox input:checkbox').each(function () {
				        $(this).attr('checked',false);
					});
					
					
					$.each(data.permissionArray,function(n,value){
						$("#checkbox input:checkbox[value="+value+"]").attr('checked','true');
					});
				}
			});
	}	
	
	// 删除角色模块
	// 获取角色id
	function getDeleteRoleId(id) {
		var val = id;
		$("#deleteRoleId").val(val);
		// alert(val);
	}
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

        <p style="float: left;padding: 70px 0 0 10px;font-size: 15px;"><b>首页 >>管理员管理>>角色管理</b></p>
        <div style="float: right;padding-top: 65px;">
        <button id="flush"  class="am-btn am-btn-default am-btn-xs am-text-success am-round" style="background-color:  #ffd777;"><span class="am-icon-refresh" title="查看"></span></button>
        </div>
        
        <nav style="height: 35px;background-color: #FFEBBB;width: 100%;padding-top: 100px;">

        </nav>

        
	
	<div style="padding-left: 30px;padding-top: 20px;padding-right: 30px;">
    <nav style="height: 40px;background-color: #ffd777;width: 100%;">
 <button data-target="#myModal5" data-toggle="modal" data-backdrop="static" class=" btn-default navbar-btn am-icon-trash-o" style="background-color: #DD514C;">批量删除</button>
        <button data-target="#myModal3" data-toggle="modal" data-backdrop="static" class=" btn-default navbar-btn am-icon-laptop" style="background-color: #5A98DE;">添加角色</button>
    </nav>

	</div>

    </section>
    
    <div class="card-content am-table am-table-bordered am-table-radius am-table-striped">
        <div style="width: 100%;padding: 20px 30px 0 30px ;overflow-x:scroll;">
            <div class="table-responsive" style="background-color: #F8F1E5;">
               
                 <table  class="table table-hover sortable" id="readers_list">
                    <thead>
                    <tr>
                    	<th class="table-check"><input type="checkbox" id="check_all"/></th>
<!--                         <th>ID</th> -->
                        <th>角色名</th>
                        <th>权限</th>
                        <th>描述</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
  <div class="modal fade" id="myModal2">
              <div class="modal-dialog">
              <div class="modal-content">
              <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">角色编辑</h4>
              </div>
			  <form class="form-horizontal" id="roleEdit">
              <div class="modal-body" style="text-align: left;">
			  <!-- 存放隐藏域 -->
			  <input type="hidden"  id="roleId"  name="roleId" >
			  <!-- 存放隐藏域 -->
			  <div class="form-group">
			    <label for="roleName" class="col-md-3 col-xs-5 control-label" style="text-align: right;">角色名称：</label>
			    <div class="col-md-5 col-xs-7">
			      <input type="text" class="form-control" id="roleName"  name="roleName">
			    </div>
			  </div>
			  <div class="form-group">
			    <label  class="col-md-3 col-xs-5 control-label" style="text-align: right;">角色权限：</label>
			    <div id="checkbox" class="col-md-9 col-xs-7">
					<label  class="checkbox-inline">
					  <input type="checkbox" value="1" class="checkMenu">编辑权限
					</label>
					<label  class="checkbox-inline">
					  <input type="checkbox" value="2" class="checkMenu">删除权限
					</label>
					<label class="checkbox-inline">
					  <input type="checkbox" value="3" class="checkMenu">进入后台
					</label>
					<label  class="checkbox-inline">
					  <input type="checkbox" value="4" class="checkMenu">普通用户权限
					</label><br/>
					<label class="checkbox-inline">
					  <input type="checkbox" value="5" class="checkMenu">系统设置权限
					</label>
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="content" class="col-md-3 col-xs-5 control-label" style="text-align: right;">备&nbsp;&nbsp;&nbsp;注：</label>
			    <div class="col-md-8 col-xs-7">
			  	<textarea class="form-control" rows="2" name="roleContent"  id="roleContent"></textarea>
			   </div>
			  </div>
			  </form>			  
              </div>
              <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal" id="editRoleSubmit">提交</button>
              </div>
              </div>
              </div>
  </div>
  <div class="modal fade" id="myModal3">
              <div class="modal-dialog">
              <div class="modal-content">
              <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">添加角色</h4>
              </div>
			  <form class="form-horizontal" id="roleAdd">
              <div class="modal-body" style="text-align: left;">
			<!-- 存放隐藏域 -->
			  
			  <div class="form-group">
			    <label for="roleName" class="col-md-3 col-xs-5 control-label" style="text-align: right;">角色名称：</label>
			    <div class="col-md-5 col-xs-7">
			      <input type="text" class="form-control"  name="roles.roleName">
			    </div>
			  </div>
			  <div class="form-group">
			    <label  class="col-md-3 col-xs-5 control-label" style="text-align: right;">菜单权限：</label>
			    <div class="col-md-9 col-xs-7">
					<label  class="checkbox-inline">
					  <input type="checkbox" value="1" class="checkMenu">编辑权限
					</label>
					<label  class="checkbox-inline">
					  <input type="checkbox" value="2" class="checkMenu">删除权限
					</label>
					<label class="checkbox-inline">
					  <input type="checkbox" value="3" class="checkMenu">进入后台
					</label>
					<label  class="checkbox-inline">
					  <input type="checkbox" value="4" class="checkMenu">普通用户权限
					</label><br/>
					<label class="checkbox-inline">
					  <input type="checkbox" value="5" class="checkMenu">系统设置权限
					</label>
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="content" class="col-md-3 col-xs-5 control-label" style="text-align: right;">备&nbsp;&nbsp;&nbsp;注：</label>
			    <div class="col-md-8 col-xs-7">
			  	<textarea class="form-control" rows="2" name="roles.roleContent" ></textarea>
			   </div>
			  </div>
			  </form>			  
              </div>
              <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal" id="addRoleSubmit">提交</button>
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
              <form id="deleteRole">
              <!-- 存放隐藏域 -->
              <input type="hidden"  id="deleteRoleId" name="roleId" >
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
</html>