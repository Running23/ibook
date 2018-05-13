<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />


<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<title>新书入库</title>
<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css">
<!--external css-->
<link rel="stylesheet" href="<%=basePath%>/style/ibooks/font-awesome/css/font-awesome.css"/>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/extend_asset_css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/gritter/css/jquery.gritter.css"/>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/lineicons/style.css">
<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/extend_asset_css/style.css"> 
<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/style-responsive.css">

<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/add_book.css">

<!-- js placed at the end of the document so the pages load faster -->
<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
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
<script src="<%=basePath%>/style/ibooks/js/chart-master/Chart.js"></script>
<script type="text/javascript" src="<%=basePath%>/style/ibooks/js/jquery/table/script.js"></script>
<script src="<%=basePath%>/style/ibooks/js/books/add_book.js"></script>
<!--引入UEdit 脚本  -->
<!--排除bug先注释掉下面3行  -->
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>/style/ibooks/UEditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>/style/ibooks/UEditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>/style/ibooks/UEditor/lang/zh-cn/zh-cn.js"></script>
<!--     引入日期插件 -->
    <script src="<%=basePath%>/style/ibooks/datepicker/WdatePicker.js"></script>    
</head>
<body style="background-color:#F8F1E5">
	<!-- 导入头部 -->
	<%@ include file="/WEB-INF/page/common/header.jsp"%>
	<!-- 导入菜单 -->
	<%@ include file="/WEB-INF/page/common/menus.jsp"%>
	
	
	<!-- **********************************************************************************************************************************************************
	MAIN CONTENT
	*********************************************************************************************************************************************************** -->
	<!--main content start-->
	<section id="main-content" class="title">
	<section>
	<nav style="height: 50px;width: 100%;" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	    <div class="container-fluid" >
	        <!--向左对齐-->
			<b class="navbar-text navbar-left glyphicon "><a href="${pageContext.request.contextPath}/l_system/librarian/view">首页</a>>>借还系统后台>>添加新书</b>
	        <!--向右对齐-->
	        <!-- <div class="search-box" style="text-align: right;">
	                         保存至书单：创建新书单
	    	<input type="button" class="btn-default navbar-btn " style="background-color: #ffd777;" 
	    		onclick="javascript:BookFomr()" value="保存"/>
	        </div> -->
	    </div>
	</nav>
	
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	<div class="row">
		<p class="text_one"><img src="/ibook/style/indexassets/image/图书.png" class="img_one">添加新书</p>
	</div>
	<div id="a" class="row">
	<div class="col-xs-12 col-sm-11 col-md-11 col-lg-11 space">
		<form id="BookFomr" method="post" enctype="multipart/form-data">
	    
	       
	        <!-- 图片上传 -->
	            <div class="row">
	               <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
	               		<p class="text_two">书籍封面:</p>
	               </div>
	                
	               <div class="col-xs-9 col-sm-10 col-md-10 col-lg-10">
					    <!-- <input id="picfile" type="file" size="30"  name="picfile" class="inp_one" >   -->
				   		<div class="con4">
							<canvas id="cvs" width="150" height="150"></canvas>
						</div>
						<div class="con4">
							<span class="btn upload_one">上传图像<input type="file" name="picfile" class="upload_pic " id="upload" /></span>
						</div>
				   </div> 
	                
	            </div>
	            <div class="row">
	            	<div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
	                	<p class="text_two">图书编号:</p>
	                </div>
	                <div class="col-xs-9 col-sm-10 col-md-10 col-lg-10">
	                	<input name="bookNumber" type="text" class="form-control inp_one"/>
	                </div> 
	            </div>
	
	            <div class="row">
	                <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
	                	<p class="text_two">图书题名:</p>
	                </div>
	                <div class="col-xs-9 col-sm-10 col-md-10 col-lg-10">
	                	<input name="bookTitl" type="text" class="form-control inp_one"/>
	                </div>
	            </div>
	           <div class="row">
	                <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
	                	<p class="text_two">书的类型:</p>
	                </div>
	                <div class="col-xs-9 col-sm-10 col-md-10 col-lg-10">
	                	<input name="bookTypes" type="text" class="form-control inp_one"/>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
	                	<p class="text_two">条形码:</p>
	                </div>
	                <div class="col-xs-9 col-sm-10 col-md-10 col-lg-10">
	                	<input name="bookBarcode" type="text" class="form-control inp_one"/>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
	                	<p class="text_two">作者:</p>
	                </div>
	                <div class="col-xs-9 col-sm-10 col-md-10 col-lg-10">
	                	<input name="author" type="text" class="form-control inp_one"/>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
	                	<p class="text_two">出版社:</p>
	                </div>
	                <div class="col-xs-9 col-sm-10 col-md-10 col-lg-10">
	                	<input name="publishingHouse" type="text" class="form-control inp_one"/>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
	                	<p class="text_two">出版时间:</p>
	                </div>
	                <div class="col-xs-9 col-sm-10 col-md-10 col-lg-10">
	                	<input name="publicationDate" type="text" class="form-control inp_one"  readonly="true" pattern="yyyy-MM-dd" onfocus="WdatePicker({'skin':'whyGreen','dateFmt':'yyyy-MM-dd'});"/>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
	                	<p class="text_two">购买时间:</p>
	                </div>
	                <div class="col-xs-9 col-sm-10 col-md-10 col-lg-10">
	                	<input name="purchasingDate" type="text" class="form-control inp_one"  readonly="true" pattern="yyyy-MM-dd" onfocus="WdatePicker({'skin':'whyGreen','dateFmt':'yyyy-MM-dd'});"/>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
	                	<p class="text_two">价格:</p>
	                </div>
	                <div class="col-xs-9 col-sm-10 col-md-10 col-lg-10">
	                	<input name="mone" type="text" class="form-control inp_one"/>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
	                	<p class="text_two">简介:</p>
	                </div>
	                <div class="col-xs-9 col-sm-10 col-md-10 col-lg-10">
<!-- 	                <input name="blurb" type="text" style="width: 380px;"/> -->

<!--引入富文本编辑器 -->
	                <div>
					    <textarea id="editor" name="blurb" class="inp_one" style="width: 100%; height: 100%; "></textarea>
					</div>
	                
	                </div>
	            </div>
	        	<div class="row">
	        		<div class="col-xs-3 col-xs-push-2 col-sm-3 col-sm-3 col-lg-3">
	        			<input type="button" class="btn btn-success inp_three" value="添加" id="add" onclick="javascript:BookFomr()"/>
	        		</div>
	        		<div class="col-xs-3 col-xs-push-5 col-sm-3 col-sm-3 col-lg-3">
	        			<input type="button" class="btn btn-danger inp_two" value="取消" id="delete"/>
	        		</div>
	        	
	        	</div>
	    
	    </form>
	</div>
	</div>
	
	
	</div>
	</section>
	</section>
	
</body>
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
                {type: "block", label: "Regular event"}
            ]
        });
    });


    function myNavFunction(id) {
        $("#date-popover").hide();
        var nav = $("#" + id).data("navigation");
        var to = $("#" + id).data("to");
        console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
    
    function BookFomr(){
        var formData = new FormData($( "#BookFomr" )[0]); 
        alert("formData:"+formData);
        
        var ajaxUrl = "${pageContext.request.contextPath}/l_system/books/save";
	    $.ajax({
		    type: "POST",
		    url: ajaxUrl,
		    data:formData,
		    async: false,  
		    cache: false,  
		    contentType: false,  
		    processData: false,
		    success: function (data) {
		        alert(data);
		        alert("加载成功");
		    },
		    error: function(data) {
		        alert("error:"+data.responseText);

		    }
		    });
    }
</script>

<!--UEdit 脚本 -->
<script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
     var ue = UE.getEditor('editor');
</script>
</body>
</html>