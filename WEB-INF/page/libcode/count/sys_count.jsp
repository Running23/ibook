<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<title>系统统计</title>
    <!-- Bootstrap core CSS -->
<link href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css" rel="stylesheet"/>
    <!--external css-->
<link href="<%=basePath%>/style/ibooks/font-awesome/css/font-awesome.css" rel="stylesheet"/>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/extend_asset_css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/lineicons/style.css"/>
    <!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/extend_asset_css/style.css"/>
<link href="<%=basePath%>/style/ibooks/css/ext_assets_css/style-responsive.css" rel="stylesheet"/>

<script src="<%=basePath%>/style/ibooks/js/chart-master/Chart.js"></script>
<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>

<script src="<%=basePath%>/style/ibooks/js/jquery/header/two.js"></script>
<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/zabuto_calendar.js"></script>
<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.scrollTo.min.js"></script>
<script class="include" type="text/javascript" src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.dcjqaccordion.2.7.js"></script>
<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.nicescroll.js" type="text/javascript"></script>

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
<script type="text/javascript">
$(function() {
	var mydate = new Date();
	var day = mydate.getDate();
	var month = mydate.getMonth()+1;
	var t2 = mydate.getFullYear()+"年"+(month<10?"0"+month:month)+"月"+(day<10?"0"+day:day)+"日";
	$(".fa-clock-o").text(t2);
})
</script>
</head>
<body>

	<!-- 导入头部 -->
	<%@ include file="/WEB-INF/page/common/header.jsp"%>
	<!-- 导入菜单 -->
	<%@ include file="/WEB-INF/page/common/menus.jsp"%>
 <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">

              <div class="row">
                  <div class="col-lg-9 main-chart">
                  
                  	<div class="row mtbox">
                  		<div class="col-md-2 col-sm-2 col-md-offset-1 box0">
                  			<div class="box1">
					  			<span class="li_heart"></span>
					  			<h3>借阅量</h3>
                  			</div>
					  			<p>xxxxx图书馆读者累计借借阅图书<span id="bookLendCount">23</span>次</p>
                  		</div>
                  		<div class="col-md-2 col-sm-2 box0">
                  			<div class="box1">
					  			<span class="li_cloud"></span>
					  			<h3>访问量</h3>
                  			</div>
					  			<p>xxxxx图书馆游客累计访问本网站<span id="visitCount">33</span>次</p>
                  		</div>
                  		<div class="col-md-2 col-sm-2 box0">
                  			<div class="box1">
					  			<span class="li_stack"></span>
					  			<h3>馆藏书</h3>
                  			</div>
					  			<p>xxxxx图书馆累计藏书<span id="bookCount">44</span>册</p>
                  		</div>
                  		<div class="col-md-2 col-sm-2 box0">
                  			<div class="box1">
					  			<span class="li_news"></span>
					  			<h3>读者数</h3>
                  			</div>
					  			<p>截止当日，网站已有<span id="readerCount">56</span>名注册读者</p>
                  		</div>
                  		<div class="col-md-2 col-sm-2 box0">
                  			<div class="box1">
					  			<span class="li_data"></span>
					  			<h3>书库数</h3>
                  			</div>
					  			<p>xxxxx图书馆当前书库个数为10，分别为计算机类书库，自然文学书库，......</p>
                  		</div>
                  	
                  	</div><!-- /row mt -->	
                  
					<div class="row mt">
                      <!--CUSTOM CHART START -->
                      <div class="border-head">
                          <h3>各月份访问者</h3>
                      </div>
                      <div class="custom-bar-chart">
                          <ul class="y-axis">
                              <li><span>10.000</span></li>
                              <li><span>8.000</span></li>
                              <li><span>6.000</span></li>
                              <li><span>4.000</span></li>
                              <li><span>2.000</span></li>
                              <li><span>0</span></li>
                          </ul>
                          <div class="bar">
                              <div class="title">JAN</div>
                              <div class="value tooltips" data-original-title="8.500" data-toggle="tooltip" data-placement="top">15%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">FEB</div>
                              <div class="value tooltips" data-original-title="5.000" data-toggle="tooltip" data-placement="top">50%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">MAR</div>
                              <div class="value tooltips" data-original-title="6.000" data-toggle="tooltip" data-placement="top">60%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">APR</div>
                              <div class="value tooltips" data-original-title="4.500" data-toggle="tooltip" data-placement="top">45%</div>
                          </div>
                          <div class="bar">
                              <div class="title">MAY</div>
                              <div class="value tooltips" data-original-title="3.200" data-toggle="tooltip" data-placement="top">32%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">JUN</div>
                              <div class="value tooltips" data-original-title="6.200" data-toggle="tooltip" data-placement="top">62%</div>
                          </div>
                          <div class="bar">
                              <div class="title">JUL</div>
                              <div class="value tooltips" data-original-title="7.500" data-toggle="tooltip" data-placement="top">75%</div>
                          </div>
                      </div>
                      <!--custom chart end-->
					</div><!-- /row -->	
					
                  </div><!-- /col-lg-9 END SECTION MIDDLE -->
                  
                  
      <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->                  
                  
                  <div class="col-lg-3 ds">
                        <!-- CALENDAR-->
                        <div id="calendar" class="mb">
                            <div class="panel green-panel no-margin">
                                <div class="panel-body">
                                    <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                                        <div class="arrow"></div>
                                        <h3 class="popover-title" style="disadding: none;"></h3>
                                        <div id="date-popover-content" class="popover-content"></div>
                                    </div>
                                    <div id="my-calendar"></div>
                                </div>
                            </div>
                        </div><!-- / calendar -->
                      
                  </div><!-- /col-lg-3 -->
              </div><! --/row -->
          </section>
      </section>
	<footer><p style="float: right;"><img src="<%=basePath%>/style/ibooks/img/8.jpg"></p></footer>
</body>
<!--common script for all pages-->
<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/common-scripts.js"></script>

<script type="text/javascript" src="<%=basePath%>/style/ibooks/js/gritter/js/jquery.gritter.js"></script>
<script type="text/javascript" src="<%=basePath%>/style/ibooks/js/ext_assets_js/gritter-conf.js"></script>

<!--script for this page-->
<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/sparkline-chart.js"></script>
<%-- <script src="<%=basePath%>/style/ibooks/js/count/user_librarian.js"></script> --%>

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
</script>

</html>