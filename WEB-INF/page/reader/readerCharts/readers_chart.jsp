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
    <link rel="stylesheet" href="http://cdn.oesmith.co.uk/morris-0.4.3.min.css"> 
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/extend_asset_css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/gritter/css/jquery.gritter.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/lineicons/style.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/admin.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/ibooks/css/amazeui.min.css" />
    <link href="<%=basePath%>/style/ibooks/css/extend_asset_css/style.css" rel="stylesheet">
    <link href="<%=basePath%>/style/ibooks/css/ext_assets_css/style-responsive.css" rel="stylesheet">
    
	<script src="<%=basePath%>/style/ibooks/js/script.js"></script>
    <script src="<%=basePath%>/style/ibooks/js/chart-master/Chart.js"></script>
    
    
    <style>
        body {
            background-image: url(<%=basePath%>/style/ibooks/img/5.jpg);
        }
    </style>
    <script>
    $('#myModal2').modal(show);
    $('#myModal3').modal(show);
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
          <section class="wrapper site-min-height">
          <h3><i class="fa fa-angle-right"></i>统计图表</h3>
              <!-- page start-->
              <div class="tab-pane" id="chartjs">
                  <div class="row mt">
                      <div class="col-lg-6">
                          <div class="content-panel">
							  <h4><i class="fa fa-angle-right"></i>前半年男女借阅情况</h4>
                              <div class="panel-body text-center">
                                  <canvas id="bar" height="300" width="400"></canvas>
                              </div>
                          </div>
                      </div>
                      <div class="col-lg-6">
                          <div class="content-panel">
							  <h4><i class="fa fa-angle-right"></i>读者文化程度分布</h4>
                              <div class="panel-body text-center">
                                  <canvas id="pie" height="300" width="400"></canvas>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- page end-->
              <!-- page start-->
              <div id="morris">
                  <div class="row mt">
                      <div class="col-lg-6">
                          <div class="content-panel">
                              <h4><i class="fa fa-angle-right"></i>各年份阅读量</h4>
                              <div class="panel-body">
                                  <div id="hero-area" class="graph"></div>
                              </div>
                          </div>
                      </div>
                      <div class="col-lg-6">
                          <div class="content-panel">
                              <h4><i class="fa fa-angle-right"></i>读者分布区域</h4>
                              <div class="panel-body">
                                  <div id="hero-donut" class="graph"></div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              

          </section>
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              <a href="http://www.mycodes.net/" target="_blank">狼鑫团队</a>
              <a href="chartView" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

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
	<script src="<%=basePath%>/style/ibooks/js/chart-master/raphael-min.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/chart-master/morris-0.4.3.min.js"></script>
	<!--script for this page-->
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/sparkline-chart.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/zabuto_calendar.js"></script>
	<script type="text/javascript" src="<%=basePath%>/style/ibooks/js/script.js"></script>
<!--script for this page-->
<script src="<%=basePath%>/style/ibooks/js/chart-master/morris-conf.js"></script>
<!--script for this page-->
<script src="<%=basePath%>/style/ibooks/js/chart-master/Chart.js"></script>
<script src="<%=basePath%>/style/ibooks/js/chart-master/chartjs-conf.js"></script>
<script>
    //custom select box
    $(function(){
        $('select.styled').customSelect();
     });
</script>
</body>
</html>