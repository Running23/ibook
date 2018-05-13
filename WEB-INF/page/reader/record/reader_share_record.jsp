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


    <title>分享记录</title>


    <link href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css" rel="stylesheet">
    <!--external css-->
    <link href="<%=basePath%>/style/ibooks/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/extend_asset_css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/gritter/css/jquery.gritter.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/lineicons/style.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/admin.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/amazeui.min.css" />
    <link href="<%=basePath%>/style/ibooks/css/extend_asset_css/style.css" rel="stylesheet">
    <link href="<%=basePath%>/style/ibooks/css/ext_assets_css/style-responsive.css" rel="stylesheet">
    
	<script src="<%=basePath%>/style/ibooks/js/script.js"></script>
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
    
    <style>
        body {
            background-image: url(<%=basePath%>/style/ibooks/img/5.jpg);
        }
    </style>
    <script>
    $('#myModal1').modal(show);
    $('#myModal2').modal(show);
    $('#myModal3').modal(show);
    $('#myModal4').modal(show)
    </script>
</head>
<body> 
	<!-- 导入头部 -->
	<%@ include file="/WEB-INF/page/common/header.jsp"%>
	<!-- 导入菜单 -->
	<%@ include file="/WEB-INF/page/common/menus.jsp"%>
	
	<!-- main页面 -->
<section id="main-content">
    <section style="background-image: url(style/ibooks/img/5.jpg);">

        <p style="float: left;padding: 70px 0 0 10px;font-size: 15px;"><b>首页 >>会员管理 >>分享记录</b></p>
        <div style="float: right;padding-top: 65px;">
        <button class="am-btn am-btn-default am-btn-xs am-text-success am-round" style="background-color:  #ffd777;"><span class="am-icon-refresh" title="查看"></span></button>
        </div>
        
        <nav style="height: 35px;background-color: #FFEBBB;width: 100%;padding-top: 100px;">

        </nav>

        <div class="search-box" style="text-align: center;padding-top: 20px;font-size: 14px;padding-right: 10px;">
			
			
            <form>
            	日期范围: 
                <input type="date" name="mydate" id="mydate" style="height: 26px;"/>
                <input type="text" name="mytext" id="mytext" value="输入会员名称、电话、邮箱" style="width: 200px;"/>
               	<button class="btn-default navbar-btn " style="background-color: #ffd777;">搜索记录</button>
			</form>

        </div>
	
	<div style="padding-left: 30px;padding-top: 20px;padding-right: 30px;">
    <nav style="height: 40px;background-color: #ffd777;width: 100%;">
        <button class=" btn-default navbar-btn am-icon-trash-o" style="background-color: #DD514C;">批量删除</button>
        
        <p style="float: right;padding-top: 10px;">共有数据 条</p>
    </nav>

	</div>

    </section>
    <div style="padding: 10px 30px 0 0;float: right;"><b>从当前数据中检索：</b>
    <input type="search" /></div>
    <div class="card-content am-table am-table-bordered am-table-radius am-table-striped">
        <div style="width: 100%;padding: 20px 30px 0 30px ;overflow-x:scroll;">
            <div class="table-responsive" style="background-color: #F8F1E5;">
               
                <table class="table table-hover sortable" id="table">
                    <thead>
                    <tr>
                    	<th class="table-check"><input type="checkbox" /></th>
                        <th>ID</th>
                        <th>用户名</th>
                        <th>昵称</th>
                        <th>IP</th>
                        <th>访问时间</th>
                        <th>URL</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                    	<th class="table-check"><input type="checkbox" /></th>
                        <td>1111111</td>
                        <td>222222</td>
                        <td>adjkas</td>
                        <td>3121313</td>
                        <td>415465</td>
                        <td>551531</td>
                        
						<td>
							
                   			 <div class="am-btn-group am-btn-group-xs">
                      			<button class=" am-btn-xs am-text-danger am-round" data-toggle="modal" data-target="#myModal4" data-backdrop="static" title="删除"><span class="am-icon-trash-o" ></span></button>
                    		</div>
                  
						</td>
                    </tr>
                    <tr>
                    	<th class="table-check"><input type="checkbox" /></th>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                        <td>6</td>
                        
                        <td>
							
                   			 <div class="am-btn-group am-btn-group-xs">
                      			<button class=" am-btn-xs am-text-danger am-round" data-toggle="modal" data-target="#myModal4" data-backdrop="static" title="删除"><span class="am-icon-trash-o" ></span></button>
                   		</div>
                  
						</td>

                    </tr>
                    <tr>
                        <th class="table-check"><input type="checkbox" /></th>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                        <td>6</td>
                        
                        <td>
							
                   			 <div class="am-btn-group am-btn-group-xs">
                      			<button class=" am-btn-xs am-text-danger am-round" data-toggle="modal" data-target="#myModal4" data-backdrop="static" title="删除"><span class="am-icon-trash-o" ></span></button>
                   		</div>
                  
						</td>

                    </tr>
                    <tr>
                        <th class="table-check"><input type="checkbox" /></th>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                        <td>6</td>
                        
                        <td>
							
                   			 <div class="am-btn-group am-btn-group-xs">
                      			<button class=" am-btn-xs am-text-danger am-round" data-toggle="modal" data-target="#myModal4" data-backdrop="static" title="删除"><span class="am-icon-trash-o" ></span></button>
                    		</div>
                  
						</td>

                    </tr>

                    </tbody>
                </table>
                <div id="controls">
                    <div id="perpage" style="float: left;">
                        <select onchange="sorter.size(this.value)">
                            <option value="5">5</option>
                            <option value="10" selected="selected">10</option>
                            <option value="20">20</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                        </select>

                    </div>
                    <div id="navigation" style="float: left;">
                        <img src="<%=basePath%>/style/ibooks/img/first.gif" width="16" height="16" alt="First Page"
                             onclick="sorter.move(-1,true)"/>
                        <img src="<%=basePath%>/style/ibooks/img/previous.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1)"/>
                        <img src="<%=basePath%>/style/ibooks/img/next.gif" width="16" height="16" alt="First Page" onclick="sorter.move(1)"/>
                        <img src="<%=basePath%>/style/ibooks/img/last.gif" width="16" height="16" alt="Last Page" onclick="sorter.move(1,true)"/>
                    </div>
                    <div id="text" style="float: right;">当前页面<span id="currentpage"></div>
                </div>
            </div>
        </div>
    </div>
</section>

  
  <div class="modal fade" id="myModal4">
              <div class="modal-dialog">
              <div class="modal-content">
              <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">信息</h4>
              </div>
              <div class="modal-body">
              <ul class="list-unstyled">
              <li>确定删除吗？</li>
    		  </ul>
              </div>
              <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
              <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
              </div>
              </div>
              </div>
  </div>
<footer><p style="float: right;"><img src="<%=basePath%>/style/ibooks/img/8.jpg"></p></footer>

<script type="application/javascript">
    $(document).ready(function () {
        $("#date-popover").popover({html: true, trigger: "manual"});
        $("#date-popover").hide();
        $("#date-popover").click(function (e) {
            $(this).hide();
        });

        $("#my-calendar").zabuto_calendar({
            action: function () {
                return myDateFunction(this.id, false);
            },
            action_nav: function () {
                return myNavFunction(this.id);
            },
            ajax: {
                url: "show_data.php?action=1",
                modal: true
            },
            legend: [
                {type: "text", label: "Special event", badge: "00"},
                {type: "block", label: "Regular event" }
            ]
        });
    });


    function myNavFunction(id) {
        $("#date-popover").hide();
        var nav = $("#" + id).data("navigation");
        var to = $("#" + id).data("to");
        console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
</script>
<script type="text/javascript">
    var sorter = new TINY.table.sorter("sorter");
    sorter.head = "head";
    sorter.asc = "asc";
    sorter.desc = "desc";
    sorter.even = "evenrow";
    sorter.odd = "oddrow";
    sorter.evensel = "evenselected";
    sorter.oddsel = "oddselected";
    sorter.paginate = true;
    sorter.currentid = "currentpage";
    sorter.limitid = "pagelimit";
    
</script>

</body>

</html>