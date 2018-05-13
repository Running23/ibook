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
	<title>读者列表</title>
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
	<!-- fjr -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/table_style.css" />
	    <script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery-1.8.3.min.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/script.js"></script>
    <script src="<%=basePath%>/style/ibooks/js/chart-master/Chart.js"></script>
	<!--引入日期插件 -->
    <script src="<%=basePath%>/style/ibooks/datepicker/WdatePicker.js"></script>
    
    <!--这些js文件放最后，别移动它  -->	
	<!-- js placed at the end of the document so the pages load faster -->
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

	
    <style>
        body {
            background-image: url(<%=basePath%>/style/ibooks/img/5.jpg);
        }
    </style>
</head>
<body> 
	<!-- 导入头部 -->
	<%@ include file="/WEB-INF/page/common/header.jsp"%>
	<!-- 导入菜单 -->
	<%@ include file="/WEB-INF/page/common/menus.jsp"%>
	
	<!-- main页面 -->
<section id="main-content">
    <section style="background-image: url(<%=basePath%>/style/ibooks/img/5.jpg);">

        <p style="float: left;padding: 70px 0 0 10px;font-size: 15px;"><b>首页 >>会员管理>>会员列表</b></p>
        <div style="float: right;padding-top: 65px;">
        <button id="flush" class="am-btn am-btn-default am-btn-xs am-text-success am-round" style="background-color:  #ffd777;"><span class="am-icon-refresh" title="查看"></span></button>
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
        <button data-target="#myModal6" data-toggle="modal" data-backdrop="static"  class=" btn-default navbar-btn am-icon-laptop" style="background-color: #5A98DE;" id="getDateTime">添加用户</button>
        <p style="float: right;padding-top: 10px;">共有数据:<spand id="total"></spand>条</p>
    </nav>

	</div>

    </section>
    <div style="padding: 10px 30px 0 0;float: right;"><b>从当前表中检索：</b>
    <input id="searchByName" type="search" placeholder="读者姓名"/></div>
    <div class="card-content am-table am-table-bordered am-table-radius am-table-striped">
        <div style="width: 100%;padding: 20px 30px 0 30px ;overflow-x:scroll;">
            <div class="table-responsive" style="background-color: #F8F1E5;">
               
                <table id="readers_list" class="table table-hover sortable table_style_fixed" id="table">
                    <thead>
                    <tr>
                    	<th class="table-check"><input type="checkbox" id="check_all"/></th>
                        <th class="tdwidth">ID</th>
                        <th class="tdwidth">用户名</th>
                        <th class="tdwidth">性别</th>
                        <th>昵称</th>
                        <th>手机</th>
                        <th>邮箱</th>
                        <th>地址</th>
                        <th>加入时间</th>
                        <th>状态</th>
<!--                         <th>物理卡号</th> -->
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
			  <input type="hidden"  id="editreaderId"  name="readerId" >
			  <div class="form-group">
			    <label for="readerName" class="col-sm-2 control-label" style="text-align: right;">用户名：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control" id="readerName"  name="readerName">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="readerNickname" class="col-sm-2 control-label" style="text-align: right;">昵&nbsp;&nbsp;&nbsp;称：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control" id="readerNickname" placeholder="昵称" name="readerNickname">
			    </div>
			  </div>
			  <div class="form-group">
			    <label  class="col-sm-2 control-label" style="text-align: right;">状&nbsp;&nbsp;&nbsp;态：</label>
			    <div class="col-sm-5">
					<label class="radio-inline">
					  <input type="radio" name="readerStatus" id="stop" value="0"> 停用
					</label>
					<label class="radio-inline">
					  <input type="radio" name="readerStatus" id="start" value="1"> 启用
					</label>			      
			    </div>
			  </div>			  			  
			  <div class="form-group">
			    <label for="sex" class="col-sm-2 control-label" style="text-align: right;">性&nbsp;&nbsp;&nbsp;别：</label>
			    <div class="col-sm-5">
					<label class="radio-inline">
					  <input type="radio" name="sex" id="male" value="0"> 男
					</label>
					<label class="radio-inline">
					  <input type="radio" name="sex" id="female" value="1"> 女
					</label>
					<label class="radio-inline">
					  <input type="radio" name="sex" id="other" value="2"> 保密
					</label>					
			    </div>
			  </div>

			  <div class="form-group">
			    <label for="phone" class="col-sm-2 control-label" style="text-align: right;">手&nbsp;&nbsp;&nbsp;机：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control" id="phone" placeholder="手机" name="phone">
			    </div>
			  </div>			  
			  
			  <div class="form-group">
			    <label for="readerNameemail" class="col-sm-2 control-label" style="text-align: right;">邮&nbsp;&nbsp;&nbsp;箱：</label>
			    <div class="col-sm-5">
			      <input type="email" class="form-control" id="email" placeholder="邮箱" name="email">
			    </div>
			  </div>			  
			  <div class="form-group">
			    <label for="readerAddress" class="col-sm-2 control-label" style="text-align: right;">地&nbsp;&nbsp;&nbsp;址：</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="readerAddress" placeholder="地址" name="readerAddress">
			    </div>
			  </div>			  
			  <div class="form-group">
			    <label for="content" class="col-sm-2 control-label" style="text-align: right;">备&nbsp;&nbsp;&nbsp;注：</label>
			    <div class="col-sm-8">
			  	<textarea class="form-control" rows="2" id="content" name="content"></textarea>
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
  <div class="modal fade" id="myModal3">
              <div class="modal-dialog">
              <div class="modal-content">
              <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">修改密码</h4>
              </div>
              <div class="modal-body" style="text-align: right;">
              
              <form class="form-horizontal" id="passwordEdit">
              <!-- 存放隐藏域 -->
              <input type="hidden"  id="editpasswordId"  name="readerId" >
			  <div class="form-group">
			    <label class="col-sm-3 control-label" for="oldPassword">旧密码</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="oldPassword" placeholder="请输入旧密码" >
			    </div>
			  </div><br/>
			  <div class="form-group">
			    <label for="newPassword" class="col-sm-3 control-label">新密码</label>
			    <div class="col-sm-6">
			      <input type="password" class="form-control" id="newPassword" placeholder="请输入新密码" name="password">
			    </div>
			  </div><br/>
			 </form>
              </div>
              <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal" id="savePassword">保存</button>
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
              <h4 class="modal-title">添加用户</h4>
              </div>
			  <form class="form-horizontal" id="addReader">
              <div class="modal-body" style="text-align: left;">
              <!-- 存放隐藏域 -->
			  <input type="hidden"  id="editreaderId"  name="readerId" >
			  <input type="hidden" name="machineReaderid" id="machineReaderid"/>
			  <div class="form-group">
			    <label for="readerName" class="col-sm-2 control-label" style="text-align: right;">用户名：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control"  name="readerName">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="readerNickname" class="col-sm-2 control-label" style="text-align: right;">昵&nbsp;&nbsp;&nbsp;称：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control"  placeholder="昵称" name="readerNickname">
			    </div>
			  </div>
			  <input type="hidden" name="readerStatus" value="1">
			  		  			  
			  <div class="form-group">
			    <label for="sex" class="col-sm-2 control-label" style="text-align: right;">性&nbsp;&nbsp;&nbsp;别：</label>
			    <div class="col-sm-5">
					<label class="radio-inline">
					  <input type="radio" name="sex"  value="0"> 男
					</label>
					<label class="radio-inline">
					  <input type="radio" name="sex"  value="1"> 女
					</label>
					<label class="radio-inline">
					  <input type="radio" name="sex"  value="2"> 保密
					</label>					
			    </div>
			  </div>

			  <div class="form-group">
			    <label for="phone" class="col-sm-2 control-label" style="text-align: right;">手&nbsp;&nbsp;&nbsp;机：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control"  placeholder="手机" name="phone">
			    </div>
			  </div>			  
			  
			  <div class="form-group">
			    <label for="readerNameemail" class="col-sm-2 control-label" style="text-align: right;">邮&nbsp;&nbsp;&nbsp;箱：</label>
			    <div class="col-sm-5">
			      <input type="email" class="form-control"  placeholder="邮箱" name="email">
			    </div>
			  </div>			  
			  <div class="form-group">
			    <label for="readerAddress" class="col-sm-2 control-label" style="text-align: right;">地&nbsp;&nbsp;&nbsp;址：</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control"  placeholder="地址" name="readerAddress">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="content" class="col-sm-2 control-label" style="text-align: right;">备&nbsp;&nbsp;&nbsp;注：</label>
			    <div class="col-sm-8">
			  	<textarea class="form-control" rows="2" name="content"></textarea>
			   </div>
			  </div>			  
<!-- 			  <div class="form-group"> -->
<!-- 			    <label for="created" class="col-sm-2 control-label" style="text-align: right;">注册时间：</label> -->
<!-- 			    <div class="col-sm-8"> -->
<!-- 			  	<input type="date"  name="created" style="height: 26px;" placeholder="当前时间" id="showNowTime"/>  -->
<!-- 			   </div> -->
<!-- 			  </div> -->
			  </form>			  
              </div>
              <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal" id="add">添加</button>
              </div>
              </div>
              </div>
  </div>
  
  
  
<footer><p style="float: right;"><img src="<%=basePath%>/style/ibooks/img/8.jpg"></p></footer>
<<!-- button type="n"></button> -->
<div class="modal fade" id="myModal6">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body" style="height: 15em;">
				<h1 style="text-align: center;margin-top: 10%;font-size: 28px;">请放读者卡</h1>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="myModal7">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body" >
				<h2>正在加载：</h2>
				<div class="progress"> 
					<div class="progress-bar" role="progressbar" aria-valuenow="60" 
						aria-valuemin="0" aria-valuemax="100" style="width: 40%;"></div>
	              	<span class="sr-only">40% 完成</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!--添加弹出开  -->
	<div class="modal fade" id="myModal8">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">信息</h4>
				</div>
				<div class="modal-body" style="text-align: center;">
					<ul class="list-unstyled">
						<h3>请放入卡号！！</h3>
					</ul>
				</div>
				<div class="modal-footer">
					<form id="statusEdit">
						<!-- 存放隐藏域 -->
						<input type="hidden" id="stopreaderId" name="readerId"> <input
							type="hidden" id="editreaderStatus" name="readerStatus" value="0">
					</form>
					<!-- <button type="button" class="btn btn-default" data-dismiss="modal" id="stopBton">确定</button>
              <button type="button" class="btn btn-default" data-dismiss="modal">取消</button> -->
				</div>
			</div>
		</div>
	</div>
</body>
<script src="<%=basePath%>/style/ibooks/js/readers/readers_list.js"></script>
</html>