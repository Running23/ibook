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
<title>借还管理</title>

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
	<!-- fjr -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/table_style.css" />
	
    <script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/script.js"></script>
    <script src="<%=basePath%>/style/ibooks/js/chart-master/Chart.js"></script>
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
	<script src="<%=basePath%>/style/ibooks/js/common/data_transform.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/books/brlog_view.js"></script>
    <style>
        body {
            background-image: url(<%=basePath%>/style/ibooks/img/5.jpg);
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
    <section style="background-image: url(<%=basePath%>/style/ibooks/img/5.jpg);">

        <p style="float: left;padding: 70px 0 0 10px;font-size: 15px;"><b>首页 >>图书借还情况>>借还管理</b></p>
        <div style="float: right;padding-top: 65px;">
        <button id="flush" class="am-btn am-btn-default am-btn-xs am-text-success am-round" style="background-color:  #ffd777;"><span class="am-icon-refresh" title="查看"></span></button>
        </div>
        
        <nav style="height: 35px;background-color: #FFEBBB;width: 100%;padding-top: 100px;">
        </nav>
	<div style="padding-left: 30px;padding-top: 20px;padding-right: 30px;">
    <nav style="height: 40px;background-color: #ffd777;width: 100%;">
        <p style="float: right;padding-top: 10px;">共有数据:<spand id="total"></spand>条</p>
    </nav>
	</div>

    </section>
    <!--20180225-->
    <div style="padding: 10px 30px 0 0;float: right;">
    <form class="form-inline" role="form">
          <b>书籍借还检索：</b>
          <div class="form-group">
               <label class="sr-only" for="reader_id">读者编号</label>
               <input class="form-control" id="reader_id" placeholder="读者编号" type="text">
          </div>
          <div class="form-group">
                <label class="sr-only" for="book_number">ISBN号</label>
                <input class="form-control" id="book_number" placeholder="ISBN号" type="text">
          </div>
          <button type="button" class="btn btn-theme" id="searchLend">一键查询</button>
<!-- 	    <b>从当前表中检索：</b> -->
<!-- 	    <input id="searchByName" type="search" placeholder="读者姓名"/> -->
	    
    </form>
    </div>
    <div class="card-content am-table am-table-bordered am-table-radius am-table-striped">
        <div style="width: 100%;padding: 20px 30px 0 30px ;overflow-x:scroll;">
            <div class="table-responsive" style="background-color: #F8F1E5;">
               
                <table id="readers_list" class="table table-hover sortable table_style_fixed" id="table">
                    <thead>
                    <tr>
                        <th>读者帐号</th>
                        <th>ISBN</th>
                        <th>书名</th>
                        <th>借阅时间</th>
                        <th>归还时间</th>
                        <th>状态</th>
                        <th>罚款</th>
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
			  <input type="hidden"  id="myModal2_bookLendId"  name="bookId" >
			  <div class="form-group">
			    <label for="myModal2_readerId" class="col-sm-2 control-label" style="text-align: right;">&nbsp;读者号：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control" id="myModal2_readerId"  name="readerId" placeholder="读者号">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="myModal2_bookNumber" class="col-sm-2 control-label" style="text-align: right;">ISBN号：</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control" id="myModal2_bookNumber" placeholder="ISBN" name="bookNumber">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="myModal2_fines" class="col-sm-2 control-label" style="text-align: right;">罚&nbsp;&nbsp;&nbsp;款：</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="myModal2_fines" placeholder="罚款" name="fines">
			    </div>
			  </div>
			  <div class="form-group">
			    <label  class="col-sm-2 control-label" style="text-align: right;">状&nbsp;&nbsp;&nbsp;态：</label>
			    <div class="col-sm-5">
					<label class="radio-inline">
					  <input type="radio" name="bookLendState" id="lend" value="0"> 借阅
					</label>
					<label class="radio-inline">
					  <input type="radio" name="bookLendState" id="return" value="1"> 归还
					</label>			      
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